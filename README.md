# IDM Activation Script v3.2.0

A powerful Windows batch script for activating Internet Download Manager (IDM) with modern UI, custom name registration, and comprehensive tools.

## Features

- **Modern Visual Interface**
  - ASCII Art Banner with "IDM SCRIPT" logo
  - Categorized menu layout (Activation, Tools, Other)
  - Emoji icons and Unicode box styling

- **Activation Options**
  - Custom Name Registration (enter your own name)
  - Trial Period Freeze (Recommended)
  - Reset Activation/Trial

- **Tools**
  - Install/Update IDM directly
  - Backup & Restore Settings
  - Smart Auto-Update Feature (Automatically updates script)
  - Clean Uninstall (complete removal)

- **Auto-Fix Features**
  - PowerShell execution policy auto-fix
  - WMI service auto-restart
  - Connection retry with DNS flush

## Requirements

- Windows 7 or later (including Windows Server)
- Administrator privileges
- PowerShell (pre-installed on modern Windows)
- Internet Download Manager installed

## Usage

### Method 1: PowerShell (Recommended)

```powershell
irm s.id/idm-script | iex
```

### Method 2: Interactive Mode

1. Download `ias.cmd`
2. Right-click → **"Run as administrator"**
3. Choose from menu:

| Activation | Tools | Other |
|------------|-------|-------|
| [1] Activate IDM | [4] Install/Update | [7] Clean Uninstall |
| [2] Freeze Trial ⭐ | [5] Backup | [8] Check Update |
| [3] Reset | [6] Restore | [H] Help |
|  |  | [0] Exit |

**When selecting Activate IDM:**
- You will be prompted to enter your First Name and Last Name
- These details will appear in IDM's registration info
- Press Enter without typing to use default values

## How It Works

1. **Registry Backup**: Creates automatic backups in `%SystemRoot%\Temp`
2. **Registry Scan**: Intelligently detects and processes IDM-related registry keys
3. **Activation**: Applies registration details or freezes trial period
4. **Verification**: Tests download functionality to ensure proper activation

## Recommendations

- **Freeze Trial** is recommended over activation for best long-term results
- Always run with administrator privileges
- Ensure IDM is installed before running the script
- Internet connection required for initial setup

## Troubleshooting

### Auto-Fix Features

The script includes automatic fixes for common issues:

| Issue | Auto-Fix |
|-------|----------|
| PowerShell restricted | Automatically sets execution policy to Bypass |
| WMI not working | Automatically restarts winmgmt service |
| Internet connection | Retries 3 times with DNS cache flush |

### Manual Fixes (if auto-fix fails)

**PowerShell is not working**
```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass -Force
```

**WMI is not working**
```cmd
net stop winmgmt /y
net start winmgmt
```

**Cannot connect to internetdownloadmanager.com**
- Check your internet connection
- Verify firewall/antivirus settings
- Run: `ipconfig /flushdns`

## Security

- Script creates registry backups before any modifications
- All operations are performed locally
- No data is sent to external servers (except IDM's own servers for testing)

## Compatibility

| Windows Version | Support |
|----------------|---------|
| Windows 11     | ✅ Full |
| Windows 10     | ✅ Full |
| Windows 8.1    | ✅ Full |
| Windows 8      | ✅ Full |
| Windows 7      | ✅ Full |
| Windows Server | ✅ Full |

| Architecture | Support |
|-------------|---------|
| x64         | ✅ Full |
| x86         | ✅ Full |
| ARM64       | ✅ Full |

## Download IDM

Official IDM Download: [internetdownloadmanager.com](https://www.internetdownloadmanager.com/download.html)

## Version History

### v3.2.0 (2026-02-01)
- **NEW**: Smart Auto-Update Feature
- **NEW**: Streamlined Menu Layout
- Removing deprecated Generate License feature
- Enhanced Freeze Trial stability

### v3.1.0 (2026-02-01)
- **NEW**: Custom name registration feature
- **NEW**: ASCII Art Banner & Modern UI
- **NEW**: Backup & Restore Settings
- Repository moved to imrosyd/idm-script
- Updated documentation

### v3.0 (2025-12-04)
- Initial release
- Full activation support
- Trial freeze functionality
- Registry backup system
- Multi-architecture support

## License

This project is released under the MIT License.

## Disclaimer

This script is for educational purposes only. Users should purchase a legitimate license from the official IDM website to support the developers.

## Author

**imrosyd**
- GitHub: [@imrosyd](https://github.com/imrosyd)
- Forked from: [omartazul/IDM-Activation-Script](https://github.com/omartazul/IDM-Activation-Script)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Support

For issues and questions:
- Open an issue on [GitHub](https://github.com/imrosyd/idm-script/issues)
- Check existing issues for solutions

---

⭐ If this project helped you, please consider giving it a star on GitHub!
