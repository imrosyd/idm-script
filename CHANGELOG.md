# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [3.0.0] - 2025-12-04

### Added
- Initial public release
- Interactive menu system with color-coded output
- Full IDM activation functionality
- Trial period freeze feature
- Reset activation and trial option
- Automatic registry backup system
- Smart CLSID registry key detection and management
- Support for x86, x64, and ARM64 architectures
- Command-line parameters for unattended operation (`/act`, `/frz`, `/res`)
- Comprehensive error handling and user guidance
- PowerShell-based registry scanning engine
- Internet connectivity verification
- IDM process management (auto-kill when needed)
- Windows 7/8/8.1/10/11 and Server compatibility

### Features
- **Registry Management**: Intelligent CLSID key detection, locking, and deletion
- **Multi-Architecture**: Full support for x86, x64, and ARM64 Windows systems
- **Safety First**: Creates timestamped registry backups before any modifications
- **User-Friendly**: Color-coded interface with clear status messages
- **Flexible Modes**: Both interactive menu and command-line operation
- **Smart Detection**: Automatically locates IDM installation path
- **Robust Error Handling**: Validates PowerShell, WMI, and system requirements

### Technical Details
- PowerShell execution environment validation
- Administrator privilege enforcement
- QuickEdit mode handling for better UX
- Terminal/ConHost compatibility layer
- Session-aware user SID detection
- HKCU/HKU registry synchronization check

### Documentation
- Comprehensive README.md with usage instructions
- MIT License
- CHANGELOG.md for version tracking

---

## Release Notes

### v3.0.0 - Initial Release

This is the first public release of the IDM Activation Script. The script has been designed from the ground up with a focus on:

1. **Reliability**: Robust error handling and validation at every step
2. **Safety**: Automatic backups before any registry modifications
3. **Compatibility**: Wide OS and architecture support
4. **Usability**: Clean interface with helpful guidance
5. **Flexibility**: Multiple operation modes (interactive and CLI)

The script combines the best practices and features from multiple activation approaches while maintaining a clean, maintainable codebase with no external dependencies beyond standard Windows components.

### Known Limitations
- Requires administrator privileges
- Internet connection needed for initial setup
- May not work with all IDM versions (trial freeze recommended)
- Some antivirus software may flag the script (false positive)

### Recommendations
- Use "Freeze Trial" option for best long-term results
- Always run with administrator rights
- Keep Windows and PowerShell updated
- Create manual registry backups if needed

---

[3.0.0]: https://github.com/omartazul/IDM-Activation-Script/releases/tag/v3.0.0
