Param (
    [Parameter(Position=0)]
    [string]$DownloadURL = 'https://raw.githubusercontent.com/omartazul/IDM-Activation-Script/main/IAS.cmd',

    [Parameter(Position=1)]
    [string]$FallbackURL = '',

    [Parameter(Position=2)]
    [string]$ExpectedHash = '',

    [switch]$SkipHashCheck,
    [switch]$NoRun,

    [Parameter(ValueFromRemainingArguments=$true)]
    [string[]]$ScriptArgs
)

$ErrorActionPreference = 'Stop'

function Write-Info { param([string]$msg) Write-Host "[INFO] $msg" }
function Write-Err { param([string]$msg) Write-Host "[ERROR] $msg" -ForegroundColor Red }

function Initialize-Environment {
    try {
        [Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12
    } catch {
        Write-Verbose "TLS 1.2 setup warning: $_"
    }
}

function Get-SafeTempFilePath {
    $isAdmin = ([System.Security.Principal.WindowsPrincipal] [System.Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator)
    $TempDir = if ($isAdmin) { Join-Path $env:SystemRoot 'Temp' } else { $env:TEMP }
    if (-not (Test-Path $TempDir)) { New-Item $TempDir -ItemType Directory -Force | Out-Null }
    Join-Path $TempDir ("IAS_{0}.cmd" -f [System.Guid]::NewGuid())
}

function Get-RemoteFile {
    param([string]$PrimaryUrl, [string]$FallbackUrl, [string]$Destination)
    
    $download = {
        param($Url)
        try {
            Write-Info "Downloading: $Url"
            Invoke-WebRequest -Uri $Url -OutFile $Destination -UseBasicParsing -ErrorAction Stop
            return $true
        } catch {
            Write-Verbose "Download failed: $_"
            return $false
        }
    }
    
    $result = & $download $PrimaryUrl
    if (-not $result -and $FallbackUrl) {
        Write-Info "Trying fallback URL"
        $result = & $download $FallbackUrl
    }
    return $result
}

function Test-FileIntegrity {
    param([string]$Path, [string]$ExpectedHash)
    
    Write-Info "Verifying hash using SHA256"
    $computed = (Get-FileHash -Path $Path -Algorithm SHA256).Hash
    $computed -ieq $ExpectedHash
}

function Test-FileValidity {
    param([string]$Path)
    
    if (-not (Test-Path -LiteralPath $Path)) { throw "File does not exist" }
    if ((Get-Item -LiteralPath $Path).Length -eq 0) { throw "File is empty" }
    
    try {
        $firstLine = Get-Content -Path $Path -TotalCount 1 -ErrorAction Stop
        if ($firstLine -notmatch "^@(set|echo)") {
            Write-Host "[WARN] File may not be an IAS batch script" -ForegroundColor Yellow
        }
    } catch {
        Write-Verbose "Content validation skipped: $_"
    }
}

function Invoke-DownloadedScript {
    param([string]$Path, [string[]]$Arguments)
    
    Write-Info "Starting process: $Path"
    if ($Arguments) {
        Start-Process -FilePath $Path -ArgumentList $Arguments -Wait -NoNewWindow
    } else {
        Start-Process -FilePath $Path -Wait -NoNewWindow
    }
}

function Remove-TempFile {
    param([string]$Path)
    
    if (Test-Path -LiteralPath $Path) {
        Remove-Item -LiteralPath $Path -Force -ErrorAction SilentlyContinue
        Write-Info "Cleaned up $Path"
    }
}

function Repair-LineEndings {
    param([string]$Path)
    
    Write-Verbose "Normalizing line endings to CRLF"
    $content = [System.IO.File]::ReadAllText($Path)
    $content = $content -replace "`r?`n", "`r`n"
    if (-not $content.EndsWith("`r`n")) { $content += "`r`n" }
    [System.IO.File]::WriteAllText($Path, $content, [System.Text.Encoding]::ASCII)
}

function Confirm-FileHash {
    param([string]$Path, [string]$Hash, [switch]$Skip)
    
    if (-not $Hash -or $Skip) { return }
    
    if (-not (Test-FileIntegrity -Path $Path -ExpectedHash $Hash)) {
        throw "Hash verification failed"
    }
    Write-Info "Hash check passed"
}

function Invoke-Main {
    if (-not $DownloadURL) { Write-Err "Download URL required"; exit 1 }
    
    Initialize-Environment
    $FilePath = Get-SafeTempFilePath
    
    try {
        if (-not (Get-RemoteFile -PrimaryUrl $DownloadURL -FallbackUrl $FallbackURL -Destination $FilePath)) {
            Write-Err "Download failed from all URLs"
            exit 1
        }
        
        Repair-LineEndings -Path $FilePath
        Confirm-FileHash -Path $FilePath -Hash $ExpectedHash -Skip:$SkipHashCheck
        Test-FileValidity -Path $FilePath
        
        if ($NoRun) {
            Write-Info "Dry-run mode: File saved at $FilePath"
            exit 0
        }
        
        Invoke-DownloadedScript -Path $FilePath -Arguments $ScriptArgs
        
    } catch {
        Write-Err "Operation failed: $_"
        exit 1
    } finally {
        Remove-TempFile $FilePath
    }
}

Invoke-Main
exit 0
