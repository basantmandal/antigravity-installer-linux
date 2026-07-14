<div align="center">

# Contributing to Antigravity2 Linux Installer

**First off, thank you for considering contributing to the Antigravity2 Linux Installer! It's people like you that make it such a great tool.**

<img src="https://img.shields.io/badge/version-1.0-blue?style=flat-square" alt="Version">
<img src="https://img.shields.io/badge/license-OSL--3.0-green?style=flat-square" alt="License">
<a href="https://www.basantmandal.in/"><img src="https://img.shields.io/badge/Website-000?style=flat-square&logo=ko-fi&logoColor=white" alt="Website"></a>
<a href="https://www.linkedin.com/in/basantmandal/"><img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white" alt="LinkedIn"></a>
<a href="mailto:support@basantmandal.in"><img src="https://img.shields.io/badge/Email-support%40basantmandal.in-blue?style=flat-square&logo=gmail" alt="Email"></a>

</div>

---

## 👋 Introduction

Welcome to the **Antigravity2 Linux Installer** contributing guide! This document provides guidelines and instructions for contributing to this Bash scripting project.

Whether you're fixing a bug, adding a feature, or improving documentation — your contributions are highly appreciated. All contributions help make this installer more robust for the entire Linux community.

---

## 🐛 Reporting Bugs

Before creating bug reports, please check existing issues to avoid duplicates.

**When creating a bug report, please include:**

- **Clear title and description** of the issue
- **Steps to reproduce** the behavior
- **Expected behavior** vs **actual behavior**
- **Environment details**: Linux distribution, Bash version
- **Logs or Terminal output** if applicable

> 💡 **Tip:** Use our [Bug Report Template](ISSUE_TEMPLATE/bug_report.yml) when creating an issue for a structured report.

---

## 💡 Suggesting Enhancements

Enhancement suggestions are welcome! When suggesting a feature:

- **Use a clear and descriptive title**
- **Provide a detailed description** of the proposed functionality
- **Explain why this enhancement would be useful** to users
- **Include examples or scripts** if possible

---

## 🛠️ Pull Requests

### Process

1. **Fork the repository** and create your branch from `main`
2. **Make your changes** following the bash coding standards below
3. **Test your changes** thoroughly across different Linux distributions (if possible)
4. **Update documentation** if your changes affect functionality
5. **Submit a Pull Request** with a clear description of changes

### PR Requirements

- [ ] Code passes `shellcheck` without errors or warnings
- [ ] Commit messages follow [Conventional Commits](https://www.conventionalcommits.org/) specification
- [ ] Changes are tested on Ubuntu/Debian or other supported Linux distributions
- [ ] Documentation is updated if applicable
- [ ] No breaking changes without proper notification

### Commit Message Format

We follow [Conventional Commits](https://www.conventionalcommits.org/):

```text
type(scope): description

[optional body]

[optional footer]
```

**Types:**

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

---

## 🧑‍💻 Coding Standards

This project uses Bash shell scripts.

- **ShellCheck:** We use [ShellCheck](https://www.shellcheck.net/) to analyze the bash scripts for potential bugs and formatting issues.
- Please run `shellcheck` on any `.sh` files before submitting a PR:

  ```bash
  shellcheck install.sh uninstall.sh
  ```

- Make sure to use proper bash spacing, error handling (e.g. `set -e`), and readable comments.

---

<div align="center">
  <b>Basant Mandal</b><br>
  <a href="https://www.basantmandal.in/"><img src="https://img.shields.io/badge/Website-000?style=flat-square&logo=ko-fi&logoColor=white" alt="Website"></a>
  <a href="https://www.linkedin.com/in/basantmandal/"><img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=flat-square&logo=linkedin&logoColor=white" alt="LinkedIn"></a>
  <a href="mailto:support@basantmandal.in"><img src="https://img.shields.io/badge/Email-support%40basantmandal.in-blue?style=flat-square&logo=gmail" alt="Email"></a>
</div>

---
