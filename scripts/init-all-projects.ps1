# Initialize All Empty Projects
# Creates basic structure for all project directories

$ErrorActionPreference = "Continue"

$monorepoPath = "F:\Workspace\Workspace-Monorepo"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  INITIALIZING PROJECT STRUCTURES" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Push-Location $monorepoPath

# Function to create directory structure
function Initialize-Project {
    param(
        [string]$ProjectPath,
        [string[]]$SubDirectories
    )
    
    Write-Host "Initializing: $ProjectPath" -ForegroundColor Cyan
    
    if (-not (Test-Path $ProjectPath)) {
        New-Item -ItemType Directory -Path $ProjectPath -Force | Out-Null
    }
    
    foreach ($dir in $SubDirectories) {
        $fullPath = Join-Path $ProjectPath $dir
        if (-not (Test-Path $fullPath)) {
            New-Item -ItemType Directory -Path $fullPath -Force | Out-Null
            Write-Host "  ✅ Created: $dir" -ForegroundColor Green
        } else {
            Write-Host "  ⚠️  Exists: $dir" -ForegroundColor Yellow
        }
    }
}

# Initialize MQL5-Google-Onedrive
Write-Host "[1] MQL5-Google-Onedrive" -ForegroundColor Yellow
Initialize-Project -ProjectPath "MQL5-Google-Onedrive" -SubDirectories @("src", "include", "docs", "tests")

# Initialize OS-Twin
Write-Host "[2] OS-Twin" -ForegroundColor Yellow
Initialize-Project -ProjectPath "OS-Twin" -SubDirectories @("src", "config", "scripts", "docs", "tests")

# Initialize OS-Twin-setup
Write-Host "[3] OS-Twin-setup" -ForegroundColor Yellow
Initialize-Project -ProjectPath "OS-Twin-setup" -SubDirectories @("install", "config", "docs")

# Initialize AgentBrain
Write-Host "[4] AgentBrain" -ForegroundColor Yellow
Initialize-Project -ProjectPath "AgentBrain" -SubDirectories @("src", "agents", "config", "docs", "tests")

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  INITIALIZATION COMPLETE" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "  1. Review project structures" -ForegroundColor White
Write-Host "  2. Add project-specific files" -ForegroundColor White
Write-Host "  3. Update README files with project details" -ForegroundColor White
Write-Host "  4. Commit changes: git add . && git commit -m 'chore: Initialize project structures'" -ForegroundColor White
Write-Host ""

Pop-Location
