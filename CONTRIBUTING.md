# Contributing to IDM Activation Script

Thank you for your interest in contributing to this project! This document provides guidelines and instructions for contributing.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How Can I Contribute?](#how-can-i-contribute)
- [Development Setup](#development-setup)
- [Coding Standards](#coding-standards)
- [Pull Request Process](#pull-request-process)
- [Reporting Bugs](#reporting-bugs)
- [Suggesting Enhancements](#suggesting-enhancements)

## Code of Conduct

This project follows a simple code of conduct:

- Be respectful and constructive
- Focus on what is best for the community
- Show empathy towards other community members
- Accept constructive criticism gracefully

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates. When creating a bug report, include:

- **Clear title** describing the issue
- **Detailed description** of the problem
- **Steps to reproduce** the behavior
- **Expected behavior** vs actual behavior
- **Environment details**:
  - Windows version and build number
  - IDM version
  - System architecture (x86/x64/ARM64)
  - PowerShell version

**Example Bug Report:**

```markdown
## Bug: Script fails on Windows 11 ARM64

### Description
The script fails during registry scanning on Windows 11 ARM64 devices.

### Steps to Reproduce
1. Run IAS.cmd as administrator on Windows 11 ARM64
2. Select option [1] Activate IDM
3. Script crashes during registry scan

### Expected Behavior
Script should complete activation successfully

### Environment
- Windows 11 Pro 23H2 (Build 22631.2861)
- IDM 6.41 Build 2
- ARM64 architecture
- PowerShell 7.4.0
```

### Suggesting Enhancements

Enhancement suggestions are welcome! Please provide:

- **Clear title** summarizing the enhancement
- **Detailed description** of the feature
- **Use case** explaining why it's useful
- **Implementation ideas** if you have any

### Code Contributions

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Make your changes
4. Test thoroughly on multiple Windows versions
5. Commit your changes (`git commit -m 'Add AmazingFeature'`)
6. Push to the branch (`git push origin feature/AmazingFeature`)
7. Open a Pull Request

## Development Setup

### Prerequisites

- Windows 7 or later (testing on Windows 10/11 recommended)
- PowerShell 5.1 or later
- Git for version control
- Text editor (VS Code, Notepad++, etc.)
- IDM installed for testing

### Testing Your Changes

Before submitting, test on:

1. **Clean Installation**: Fresh Windows VM
2. **Multiple Versions**: Windows 10 and 11 if possible
3. **Different Architectures**: x64 at minimum
4. **Edge Cases**: 
   - IDM not installed
   - No internet connection
   - Restricted PowerShell execution policy
   - Non-admin user

## Coding Standards

### Batch Script Style

```batch
:: Use clear, descriptive variable names
set "descriptive_name=value"

:: Comment complex sections
:: This section handles registry backup
call :backup_function

:: Use consistent indentation (spaces, not tabs)
if condition (
    echo Action 1
    echo Action 2
)

:: Group related operations with section markers
::========================================================================================================================================
```

### PowerShell Style

```powershell
# Use meaningful variable names
$registryPath = "HKCU:\Software"

# Add error handling
try {
    # Operation
} catch {
    Write-Host "Error: $_"
}

# Use proper formatting
foreach ($item in $collection) {
    # Process item
}
```

### General Guidelines

1. **Readability**: Code should be self-documenting
2. **Comments**: Explain WHY, not WHAT
3. **Error Handling**: Always handle potential failures
4. **User Feedback**: Provide clear status messages
5. **No Hardcoding**: Use variables for paths and values
6. **Consistency**: Follow existing patterns in the codebase

## Pull Request Process

1. **Update Documentation**: Modify README.md if you add features
2. **Update Changelog**: Add entry to CHANGELOG.md
3. **Test Thoroughly**: Ensure all functionality works
4. **Clear Description**: Explain what and why
5. **Link Issues**: Reference related issues if applicable
6. **Small PRs**: Keep changes focused and manageable

### PR Template

```markdown
## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Code refactoring

## Testing
Describe testing performed:
- OS versions tested
- Scenarios covered
- Edge cases verified

## Checklist
- [ ] Code follows project style
- [ ] Self-reviewed code
- [ ] Comments added for complex sections
- [ ] Documentation updated
- [ ] Tested on multiple Windows versions
- [ ] No breaking changes (or documented)
```

## Version Numbering

This project uses [Semantic Versioning](https://semver.org/):

- **MAJOR**: Incompatible API changes
- **MINOR**: New backwards-compatible functionality
- **PATCH**: Backwards-compatible bug fixes

Update version in:
- `IAS.cmd` (line 1: `@set iasver=X.Y.Z`)
- `README.md` (Version History section)
- `CHANGELOG.md` (new entry)

## Recognition

Contributors will be recognized in:
- GitHub contributors page
- Future README acknowledgments section

## Questions?

Feel free to:
- Open an issue for discussion
- Reach out via GitHub
- Check existing issues and PRs

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for contributing to make this project better! 🚀
