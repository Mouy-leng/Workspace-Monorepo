# Create Project Configuration Files
# Generates basic configuration files for each project

$ErrorActionPreference = "Continue"

$monorepoPath = "F:\Workspace\Workspace-Monorepo"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  CREATING PROJECT CONFIGURATIONS" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Push-Location $monorepoPath

# MQL5-Google-Onedrive config
Write-Host "[1] Creating MQL5-Google-Onedrive config..." -ForegroundColor Cyan
$mql5Config = @"
# MQL5-Google-Onedrive Configuration

[GoogleDrive]
# Google OAuth Client ID
ClientID=YOUR_CLIENT_ID
ClientSecret=YOUR_CLIENT_SECRET

# Sync Settings
SyncInterval=300
AutoSync=true
SyncDirection=bidirectional

# File Filters
IncludePatterns=*.mq5,*.mqh,*.ex5
ExcludePatterns=*.log,*.tst
MaxFileSize=10485760

# Backup Settings
AutoBackup=true
BackupInterval=3600
KeepBackups=10
"@

$mql5ConfigPath = Join-Path "MQL5-Google-Onedrive" "config.ini.example"
Set-Content -Path $mql5ConfigPath -Value $mql5Config
Write-Host "  ✅ Created config.ini.example" -ForegroundColor Green

# OS-Twin config
Write-Host "[2] Creating OS-Twin config..." -ForegroundColor Cyan
$osTwinConfig = @"
# OS-Twin Configuration

[Storage]
BackupLocation=C:\OS-Twin\Backups
CompressionLevel=6
MaxStorageSize=107374182400

[Sync]
SyncInterval=3600
ConflictResolution=ask
AutoSync=false

[General]
MaxSnapshots=10
SnapshotRetentionDays=30
"@

$osTwinConfigPath = Join-Path "OS-Twin" "config.ini.example"
Set-Content -Path $osTwinConfigPath -Value $osTwinConfig
Write-Host "  ✅ Created config.ini.example" -ForegroundColor Green

# AgentBrain config
Write-Host "[3] Creating AgentBrain config..." -ForegroundColor Cyan
$agentBrainConfig = @"
# AgentBrain Configuration

[AI]
ModelProvider=openai
ModelName=gpt-4
Temperature=0.7
MaxTokens=2000

[Memory]
VectorDatabase=chroma
MemoryLimit=1000
ContextWindow=4096

[Tasks]
MaxConcurrentTasks=5
TaskTimeout=300
RetryAttempts=3

[API]
Port=8000
Host=localhost
EnableAuth=true
"@

$agentBrainConfigPath = Join-Path "AgentBrain" "config.ini.example"
Set-Content -Path $agentBrainConfigPath -Value $agentBrainConfig
Write-Host "  ✅ Created config.ini.example" -ForegroundColor Green

# Create .env.example files
Write-Host "[4] Creating .env.example files..." -ForegroundColor Cyan

$mql5Env = @"
# Google Drive API Credentials
GOOGLE_CLIENT_ID=your_client_id_here
GOOGLE_CLIENT_SECRET=your_client_secret_here
GOOGLE_REDIRECT_URI=http://localhost:8080/callback

# MQL5 Settings
MQL5_DATA_PATH=C:\Users\YourUser\AppData\Roaming\MetaQuotes\Terminal
"@

$agentBrainEnv = @"
# AI Model Configuration
OPENAI_API_KEY=your_openai_api_key_here
MODEL_NAME=gpt-4
TEMPERATURE=0.7

# Database Configuration
DATABASE_URL=sqlite:///agentbrain.db
VECTOR_DB_PATH=./data/vector_db

# API Configuration
API_PORT=8000
API_HOST=localhost
SECRET_KEY=your_secret_key_here
"@

Set-Content -Path (Join-Path "MQL5-Google-Onedrive" ".env.example") -Value $mql5Env
Set-Content -Path (Join-Path "AgentBrain" ".env.example") -Value $agentBrainEnv
Write-Host "  ✅ Created .env.example files" -ForegroundColor Green

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  CONFIGURATION FILES CREATED" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "  1. Review configuration files" -ForegroundColor White
Write-Host "  2. Copy .example files and customize" -ForegroundColor White
Write-Host "  3. Add actual credentials (never commit!)" -ForegroundColor White
Write-Host "  4. Commit configuration templates" -ForegroundColor White
Write-Host ""

Pop-Location
