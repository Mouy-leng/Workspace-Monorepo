# Workspace Monorepo

This is a monorepo containing all workspace projects and repositories merged into a single repository.

## Structure

- **DomainController/** - Domain controller scripts, configurations, and automation tools
- **MQL5-Google-Onedrive/** - MQL5 Google OneDrive integration (empty repository - cloned from GitHub)
- **OS-Twin/** - OS-Twin project (empty repository - cloned from GitHub)
- **OS-Twin-setup/** - OS-Twin setup scripts (empty directory)
- **AgentBrain/** - AgentBrain project (empty directory)

## History

This monorepo was created by merging multiple repositories and directories:
- **DomainController** - Local project with scripts and configurations
- **MQL5-Google-Onedrive** - From https://github.com/A6-9V/MQL5-Google-Onedrive.git (empty repo)
- **OS-Twin** - From https://github.com/OS-Twin/OS-Twin.git (empty repo)
- **OS-Twin-setup** - Setup directory
- **AgentBrain** - Local project directory

## Usage

Each project maintains its original structure and can be worked on independently within this monorepo.

## Git History

The merge preserved the commit history where available. Use `git log --all --graph` to view the complete history.

## GitHub Repository

This repository is hosted on GitHub:
- **Repository**: https://github.com/Mouy-leng/Workspace-Monorepo
- **Description**: Huawei-Window-Techno - Consolidated monorepo containing all workspace projects

## Development Setup

### Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/Mouy-leng/Workspace-Monorepo.git
   cd Workspace-Monorepo
   ```

2. **Run setup script**
   
   For **Linux/Mac**:
   ```bash
   bash scripts/full-setup.sh
   ```
   
   For **Windows** (PowerShell):
   ```powershell
   .\scripts\setup.ps1
   ```

3. **Read the guides**
   - [CONTRIBUTING.md](CONTRIBUTING.md) - How to contribute
   - [DEVELOPMENT.md](DEVELOPMENT.md) - Development workflow

## Features

✅ **CI/CD Pipeline** - Automated testing and validation via GitHub Actions  
✅ **Branch Protection** - Protected main branch with required reviews  
✅ **Issue Templates** - Structured bug reports and feature requests  
✅ **PR Templates** - Standardized pull request format  
✅ **Development Scripts** - Setup and project initialization tools  

## Next Steps

1. ✅ Repository created and pushed to GitHub
2. ✅ CI/CD workflows configured
3. ✅ Branch protection enabled
4. ✅ Documentation complete
5. Review the repository: https://github.com/Mouy-leng/Workspace-Monorepo
6. Continue development in respective subdirectories
