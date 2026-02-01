# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [3.2.0] - 2026-02-01

### Added
- **Smart Auto-Update Feature** [8]: Improved update system that automatically downloads, installs, and restarts the script.
- **Enhanced Freeze Trial** [2]: Further optimized specifically for IDM stability (Highly Recommended).
- **Streamlined Menu**: Removed deprecated "Generate License" feature for simplicity.
- **Improved Serial Key Handling**: Activation now uses consistent internal logic for serial generation.

### Changed
- Reordered menu items for better usability:
  - Activation: Activate, Freeze, Reset
  - Tools: Install/Update, Backup, Restore
  - Other: Clean Uninstall, Check Update, Help
- Removed "Generate New License" menu [4] to avoid confusion with main activation.
- `_check_update` function now handles the entire update process automatically.

### Fixed
- Fixed crash issues in "Check Status" menu on certain systems.
- Fixed "Clean Uninstall" to properly remove all scheduled tasks.
- Resolved path issues by using environment variables (`%ProgramFiles%`, etc.) instead of hardcoded paths.
- Removed unreliable ASCII art elements that caused display glitches in some locales.

---

## [3.1.0] - 2026-02-01

### Added
- **Custom Name Registration**: Enter your own First Name and Last Name during activation
- **ASCII Art Banner**: Modern visual branding with "IDM SCRIPT" logo
- **Check IDM Status** [4]: View IDM version, registration info, and activation status
- **Backup Settings** [6]: Export IDM settings to Documents folder
- **Restore Settings** [7]: Import previously backed up settings
- **Check Script Update** [9]: Compare local version with GitHub latest
- **Clean Uninstall** [8]: Complete IDM removal including registry cleanup
- **Auto-Fix Features**: Automatic fixes for PowerShell, WMI, and connection issues
- **Retry Mechanism**: 3 retries with DNS flush for connection problems

### Changed
- Redesigned menu with categorized sections (Activation, Tools, Other)
- Modern box-style layout with Unicode characters and emoji icons
- Files renamed to lowercase (`ias.cmd`, `ias.ps1`, `contributing.md`, `project_summary.md`)
- Enhanced color scheme with green/yellow highlights
- Repository moved to imrosyd/idm-script

### Improved
- PowerShell auto-fix: Sets execution policy to Bypass automatically
- WMI auto-fix: Restarts winmgmt service if needed
- Better error messages with manual fix instructions

---

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

[3.2.0]: https://github.com/imrosyd/idm-script/releases/tag/v3.2.0
[3.1.0]: https://github.com/imrosyd/idm-script/releases/tag/v3.1.0
[3.0.0]: https://github.com/imrosyd/idm-script/releases/tag/v3.0.0
