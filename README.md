# IDM Activation Script

A powerful Windows batch script for activating Internet Download Manager (IDM) with multiple activation methods.

## Features

- **Multiple Activation Methods**
  - Full IDM Activation
  - Trial Period Freeze
  - Reset Activation/Trial

- **Advanced Capabilities**
  - Automatic registry backup before modifications
  - Smart CLSID registry key detection and management
  - Support for x86, x64, and ARM64 architectures
  - Unattended mode support via command-line parameters
  - Compatibility with Windows 7/8/8.1/10/11 and Server editions

## Requirements

- Windows 7 or later (including Windows Server)
- Administrator privileges
- PowerShell (pre-installed on modern Windows)
- Internet Download Manager installed

## Usage

### Method 1: PowerShell (Recommended)

Download and run directly from GitHub:

```powershell
irm https://raw.githubusercontent.com/omartazul/IDM-Activation-Script/main/IAS.ps1 | iex
```

This method:
- Downloads the latest version automatically
- Runs in a single command
- No manual file management needed

### Method 2: Interactive Mode

1. Download `IAS.cmd` from [Releases](https://github.com/omartazul/IDM-Activation-Script/releases)
2. Right-click on `IAS.cmd` and select **"Run as administrator"**
3. Choose from the menu:
   - `[1]` Activate IDM
   - `[2]` Freeze Trial Period (Recommended)
   - `[3]` Reset Activation/Trial
   - `[4]` Download IDM
   - `[5]` Help
   - `[0]` Exit

### Method 3: Command Line Mode

```batch
# Activate IDM
IAS.cmd /act

# Freeze trial period
IAS.cmd /frz

# Reset activation
IAS.cmd /res
```

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

### Common Issues

**Script requires admin privileges**
- Right-click and select "Run as administrator"

**PowerShell is not working**
- Check if PowerShell execution policies are restricted
- Run: `Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Bypass`

**WMI is not working**
- Restart Windows Management Instrumentation service
- Run: `net start winmgmt`

**Cannot connect to internetdownloadmanager.com**
- Check your internet connection
- Verify firewall/antivirus settings

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

**Tazul Islam**
- GitHub: [@omartazul](https://github.com/omartazul)

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Support

For issues and questions:
- Open an issue on [GitHub](https://github.com/omartazul/IDM-Activation-Script/issues)
- Check existing issues for solutions

---

⭐ If this project helped you, please consider giving it a star on GitHub!
