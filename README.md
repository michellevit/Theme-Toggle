# Windows Theme Toggle

![Windows](https://img.shields.io/badge/Windows-10%2B-0078D6?style=flat-square&logo=windows)
![Batch Script](https://img.shields.io/badge/Language-Batch-4D4D4D?style=flat-square&logo=windows-terminal)

A lightweight Windows batch script that instantly toggles between Light and Dark mode by editing your user theme settings in the registry - no admin rights or third-party tools required.

## Table of Contents

- [Requirements](#requirements)
- [Getting Started](#getting-started)
  - [Install](#install)
  - [Create Shortcut Icon](#create-shortcut-icon)
  - [Usage](#usage)
- [License](#license)

## Requirements

- Windows 10 or 11
- No admin rights required
- Works entirely offline - no dependencies or install needed

## Getting Started

### Install

Option 1

- Clone this repository

```powershell
git clone https://github.com/michellevit/Theme-Toggle.git
cd Windows-Theme-Toggle
```

Option 2

- Click the 'Code' button on the repo page → Download ZIP
- Extract the ZIP anywhere (e.g., Desktop or Documents folder)

### Create Shortcut Icon

You can quickly make a desktop shortcut with the included install.bat script:

- Ensure these files are in the same folder:
  - toggle-theme.bat
  - bulb.ico
  - install.bat
- Double-click install.bat - it will automatically:
  - Create a shortcut named “Toggle Theme” on your Desktop
  - Assign the bulb icon (bulb.ico)
  - Point the shortcut to your toggle-theme.bat script

You’ll see a confirmation message when complete.
Now you have a clickable light-bulb desktop icon that toggles between Light and Dark mode instantly.

💡 Note: If you prefer to make the shortcut manually, right-click toggle-theme.bat → Send to → Desktop (create shortcut) → right-click the new shortcut → Properties → Change Icon… → Browse → select bulb.ico.

### Usage

Double-click the shortcut (or run toggle-theme.bat directly).

The script will:

- Detect your current Windows theme
- Flip to the opposite mode (Light ↔ Dark)
- Show a short confirmation message

You can run it anytime to toggle back and forth - no installation or admin privileges needed.

## License

This project is licensed under the **MIT License**.
