# 🚀 Antigravity-IDE Linux Installer

<div align="center">
  <b>One-command Bash script installer for Google Antigravity-IDE on Linux (Ubuntu, Debian, and other distributions).</b><br><br>

  <img src="https://img.shields.io/badge/version-1.0-blue?style=flat-square" alt="Version">
  <img src="https://img.shields.io/badge/Platform-Linux-blue" alt="Platform">
  <a href="https://github.com/BasantMandal/antigravity-linux-installer/actions"><img src="https://github.com/BasantMandal/antigravity-linux-installer/actions/workflows/shellcheck.yml/badge.svg" alt="ShellCheck"></a>
  <img src="https://img.shields.io/badge/license-OSL--3.0-green?style=flat-square" alt="License">
  <br>
  <a href="https://www.basantmandal.in/"><img src="https://img.shields.io/badge/Website-000?style=flat-square&logo=ko-fi&logoColor=white" alt="Website"></a>
  <a href="https://www.linkedin.com/in/basantmandal/"><img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white" alt="LinkedIn"></a>
  <a href="mailto:support@basantmandal.in"><img src="https://img.shields.io/badge/Email-support%40basantmandal.in-ea4335?style=flat-square&logo=gmail&logoColor=white" alt="Email"></a>
</div>

---

## 📖 Overview

**Antigravity-IDE Linux Installer** is a lightweight, production-ready Bash script that automates the downloading and installation of **Google Antigravity** on Linux.

Instead of manually fetching tarballs, extracting files, moving directories to `/opt`, configuring sandbox permissions, and creating desktop shortcuts, this installer automates the entire process in a single command. It's the fastest way to get your development environment ready on Ubuntu, Debian, or any compatible Linux distribution.

### What it does

- 📥 Automatically downloads the latest version of Antigravity (if not present locally)
- 📁 Installs the IDE securely under `/opt`
- 🔒 Configures the required `chrome-sandbox` permissions safely
- 🖥️ Creates a `.desktop` application launcher
- 📌 Registers the application with your desktop environment
- ✅ Cleans up installation artifacts
- 🚀 Makes Antigravity-IDE ready to launch immediately

---

## ✨ Features

- 🚀 One-command automated installation
- 🐧 Designed for Linux (Ubuntu, Debian, Mint, Pop!_OS, etc.)
- 📂 Standardized installation into `/opt`
- 🖥️ Automatic desktop integration
- 🔒 Securely configures `chrome-sandbox`
- ⚡ Lightweight, dependency-checked Bash script
- 📖 Well documented & AI indexable
- 🆓 Open source

---

## ✅ Supported Platforms

| Distribution | Status |
|--------------|--------|
| Ubuntu 24.04 LTS | ✅ Tested |
| Ubuntu 26.04 LTS | ✅ Tested |
| Debian 12+       | ✅ Tested |
| Other Linux distros | ⚠️ Expected to work |

---

## 📦 Requirements

The script will automatically check for these dependencies before running:

- Linux (Ubuntu/Debian recommended)
- `bash`
- `curl` (for downloading the IDE)
- `tar` (for extraction)
- `sudo` privileges

---

# 🚀 Quick Start

### 1. Clone the repository

```bash
git clone https://github.com/basantmandal/antigravity-installer-linux.git
cd antigravity-installer-linux
```

### 2. Make the installer executable

```bash
chmod +x install.sh
```

### 3. Run the installer

The script will automatically download the IDE, install it to `/opt`, and configure your desktop shortcuts.

```bash
./install.sh
```

That's it! 🎉

*(Note: If you have already downloaded the `Antigravity IDE.tar.gz` file manually from [https://antigravity.google/download](https://antigravity.google/download#antigravity), place it in the same directory as the script and it will skip the download step).*

---

## 📂 Installation Paths

| Component | Location |
|-----------|----------|
| IDE | `/opt/Antigravity` |
| Desktop Entry | `~/.local/share/applications/Antigravity-IDE.desktop` |

---

## ▶️ Launch

Launch **Antigravity** from your desktop application menu, or run from the terminal:

```bash
/opt/Antigravity/antigravity-ide
```

---

## 🗑️ Uninstall

If you need to remove Antigravity-IDE and its desktop shortcuts:

```bash
chmod +x uninstall.sh
./uninstall.sh
```

---

## 🛣️ Roadmap

- [x] Automatic download of the latest Antigravity IDE
- [x] GitHub Actions CI (ShellCheck)
- [x] Better error handling & dependency checking
- [x] Colored terminal output
- [ ] Automatic update support
- [ ] Automatic version detection
- [ ] SHA256 checksum verification
- [ ] Multi-distribution package (deb/rpm) support

---

## 🤝 Contributing

Contributions are welcome! If you'd like to improve the installer:

- ⭐ **Star this repository** (Helps others find it!)
- 🍴 Fork the project
- 🐛 Report bugs
- 💡 Suggest new features
- 🤝 Contribute improvements

Every ⭐ helps increase the visibility of the project and motivates further development.

---

## 🐞 Bug Reports & Feature Requests

If you encounter a bug or have an idea for an improvement, please open a GitHub Issue.

---

## 📄 License

This project is licensed under the OSL 3.0 License. See the [LICENSE.txt](LICENSE.txt) file for details.

---

## ⚖️ Disclaimer

The author provides this installation script "as is" without any warranties. Users are responsible for ensuring that running this script complies with their internal security and software requirements.

---

<div align="center">
  <b>Basant Mandal</b><br>
  <i>Full Stack Developer</i><br><br>

  <a href="https://www.basantmandal.in/"><img src="https://img.shields.io/badge/Website-000?style=flat-square&logo=ko-fi&logoColor=white" alt="Website"></a>
  <a href="https://www.linkedin.com/in/basantmandal/"><img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white" alt="LinkedIn"></a>
<a href="mailto:support@basantmandal.in">
    <img src="https://img.shields.io/badge/Email-support%40basantmandal.in-blue?style=flat-square&logo=gmail" alt="Email">
</a>
  <br>

  ---
  > *Copyright © 2026 Basant Mandal. All rights reserved.*
</div>
