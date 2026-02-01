# IDM Activation Script - Project Summary

## 🎉 Welcome to IDM Activation Script v3.2.0

A professional Windows batch script for IDM activation with modern UI, custom name registration, and comprehensive tools.

## 📁 Current Project Structure

```
idm-script/
├── ias.cmd                  # Main activation script (1200+ lines)
├── ias.ps1                  # PowerShell download wrapper
├── README.md                # Complete project documentation
├── LICENSE                  # MIT License
├── CHANGELOG.md             # Version history
├── contributing.md          # Contribution guidelines
└── project_summary.md       # This overview document
```

**Repository:** https://github.com/imrosyd/idm-script  
**Author:** imrosyd ([@imrosyd](https://github.com/imrosyd))  
**License:** MIT  
**Version:** 3.2.0

## ✨ Core Features

### ias.cmd - Main Script
- **1200+ lines** of professional batch code
- **ASCII Art Banner** with "IDM SCRIPT" logo
- **Modern box-styled menu** with Unicode characters & emojis
- **Streamlined Menu Options:**
  - [1] Activate IDM (with custom name)
  - [2] Freeze Trial Period (Recommended)
  - [3] Reset Activation/Trial
  - [4] Install/Update IDM
  - [5] Backup Settings
  - [6] Restore Settings
  - [7] Clean Uninstall
  - [8] Check Script Update (Auto-Update)
  - [H] Help / [0] Exit
- **Auto-Fix Features:** PowerShell, WMI, Connection retry
- **Multi-architecture:** x86, x64, ARM64
- **Windows compatibility:** 7/8/8.1/10/11 + Server

### ias.ps1 - Download Wrapper
- Downloads latest ias.cmd from GitHub
- Hash verification support
- Fallback URL support
- Safe temp file handling
- Auto-cleanup after execution

## 🛠️ Technical Highlights

### Script Capabilities
```batch
# Activation modes
ias.cmd /act    # Full activation
ias.cmd /frz    # Freeze trial (recommended)
ias.cmd /res    # Reset to defaults

# Interactive menu
ias.cmd         # Run with full menu interface
```

### Architecture Support
- **x86:** 32-bit Windows systems
- **x64:** 64-bit Windows systems  
- **ARM64:** ARM-based Windows devices

### Safety Features
- Registry backups before any changes
- Administrator privilege enforcement
- PowerShell execution validation
- WMI functionality check
- IDM installation verification
- Internet connectivity test

## 📊 Project Statistics

| Metric | Value |
|--------|-------|
| **Total Files** | 7 |
| **Code Lines (ias.cmd)** | 950+ |
| **Documentation Files** | 4 |
| **Supported Windows Versions** | 6 (7/8/8.1/10/11/Server) |
| **Supported Architectures** | 3 (x86/x64/ARM64) |
| **License** | MIT |
| **GitHub Stars** | Growing |

## 🚀 Repository Status

### Current State
- ✅ **Initial commit** completed
- ✅ **Repository:** Live on GitHub
- ✅ **Documentation:** 100% complete
- ✅ **Code:** Production ready
- ✅ **License:** MIT (open source)

### Repository URL
**https://github.com/imrosyd/idm-script**

## 📝 File Descriptions

### ias.cmd (Main Script)
The core batch script that handles all IDM activation functionality:
- Modern box-styled menu with Unicode
- Registry scanning and manipulation
- CLSID key management
- Trial period freezing
- Automatic backup creation
- Download testing
- Error handling and recovery

### ias.ps1 (PowerShell Wrapper)
Download and execute helper script:
- Fetches latest ias.cmd from GitHub
- Verifies file integrity (optional hash check)
- Handles temporary file management
- Supports command-line arguments
- Clean error reporting

### README.md
Complete project documentation:
- Feature overview
- Installation instructions
- Usage examples (interactive and CLI)
- Troubleshooting guide
- Compatibility matrix
- Support information

### CHANGELOG.md
Version history and release notes:
- v3.0.0 initial release details
- Feature list
- Technical specifications
- Known limitations
- Recommendations

### contributing.md
Community contribution guide:
- Code of conduct
- Bug reporting template
- Feature request process
- Development setup
- Coding standards
- Pull request workflow

### LICENSE
MIT License terms:
- Copyright 2025 Md. Omar Faruk Tazul Islam
- Permission to use, modify, distribute
- No warranty disclaimer

## 🎯 Use Cases

### For Users
1. **Activate IDM** - Full registration
2. **Freeze Trial** - Unlimited 30-day trial (recommended)
3. **Reset** - Clean slate for troubleshooting
4. **Download IDM** - Quick access to official installer

### For Developers
1. **Study** - Learn batch scripting techniques
2. **Fork** - Create your own variations
3. **Contribute** - Submit improvements
4. **Reference** - Registry manipulation examples

## 💡 Recommended Workflow

### For End Users
1. Download `ias.cmd` from releases
2. Right-click → "Run as administrator"
3. Select option [2] Freeze Trial (recommended)
4. Enjoy IDM without limitations

### For Advanced Users
```powershell
# Download and run with PowerShell
irm https://raw.githubusercontent.com/imrosyd/idm-script/main/ias.ps1 | iex

# Or with parameters
.\ias.cmd /frz
```

## 🔒 Security & Privacy

### What the Script Does
- ✅ Modifies local registry keys only
- ✅ Creates backup files automatically
- ✅ Requires explicit admin privileges
- ✅ All operations are transparent
- ✅ No network calls (except IDM's own servers for testing)

### What the Script Does NOT Do
- ❌ No data collection
- ❌ No external server communication
- ❌ No malware or unwanted software
- ❌ No hidden functionality
- ❌ No user tracking

## 📈 Future Enhancements

### Potential Additions
- GitHub Actions for automated testing
- Issue and PR templates
- Multi-language support
- GUI version (optional)
- Portable exe wrapper
- Auto-update mechanism

### Community Requests
Issues and feature requests are welcome at:
**https://github.com/imrosyd/idm-script/issues**

## 🤝 Contributing

Contributions are welcome! See [contributing.md](contributing.md) for:
- How to report bugs
- How to suggest features
- Development setup
- Coding standards
- Pull request process

## 📞 Support

### Getting Help
- **Issues:** https://github.com/imrosyd/idm-script/issues
- **Documentation:** [README.md](README.md)

### Common Issues
See [README.md](README.md#troubleshooting) for solutions to:
- Admin privilege requirements
- PowerShell execution policies
- WMI service issues
- Network connectivity problems

## 🏆 Acknowledgments

This project represents a complete rewrite and rebranding with:
- Clean, maintainable code
- Professional documentation
- Community-friendly licensing
- Production-ready quality

## 📜 Legal

### Disclaimer
This script is provided for **educational purposes only**. Users should purchase legitimate IDM licenses from the official website to support the developers.

### License
MIT License - See [LICENSE](LICENSE) for full text.

**Copyright © 2025 Md. Omar Faruk Tazul Islam**

---

## ⭐ Star This Project

If you find this project useful, please consider:
- ⭐ Starring the repository on GitHub
- 🐛 Reporting bugs and issues
- 💡 Suggesting new features
- 🤝 Contributing code improvements
- 📢 Sharing with others

**Repository:** https://github.com/imrosyd/idm-script

---

**Last Updated:** February 01, 2026  
**Version:** 3.1.0  
**Status:** Active Development
