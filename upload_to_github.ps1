#!/usr/bin/env pwsh
# GitHub Upload Script for AI Sensei

Write-Host "AI Sensei - GitHub Upload Script" -ForegroundColor Cyan
Write-Host ""

# Check if git is installed
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "ERROR: Git not found! Please install Git first:" -ForegroundColor Red
    Write-Host "   https://git-scm.com/download/win"
    exit 1
}

Write-Host "[OK] Git is installed" -ForegroundColor Green
Write-Host ""

# Step 1: Initialize git repo
Write-Host "[STEP 1] Initialize Git Repository..." -ForegroundColor Yellow
if (Test-Path ".git") {
    Write-Host "   Git repository already exists" -ForegroundColor Gray
} else {
    git init
    Write-Host "   Git repository initialized" -ForegroundColor Green
}

# Step 2: Add all files
Write-Host ""
Write-Host "[STEP 2] Stage All Files..." -ForegroundColor Yellow
git add .
Write-Host "   Files staged" -ForegroundColor Green

# Step 3: Create initial commit
Write-Host ""
Write-Host "[STEP 3] Create Initial Commit..." -ForegroundColor Yellow
git commit -m "Initial commit: AI Sensei - Multi-Modal Japanese Language Tutor"

Write-Host "   Commit created" -ForegroundColor Green

# Step 4: Show status
Write-Host ""
Write-Host "Current Status:" -ForegroundColor Yellow
git status
Write-Host ""

# Step 5: Instructions
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "NEXT STEPS:" -ForegroundColor Yellow
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. You have already created the repo at:" -ForegroundColor White
Write-Host "   https://github.com/hxcsa/ai_sensai" -ForegroundColor Cyan
Write-Host ""
Write-Host "2. Run these commands to push your code:" -ForegroundColor White
Write-Host ""
Write-Host "   git remote add origin https://github.com/hxcsa/ai_sensai.git" -ForegroundColor Cyan
Write-Host "   git branch -M main" -ForegroundColor Cyan
Write-Host "   git push -u origin main" -ForegroundColor Cyan
Write-Host ""
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Ready to push!" -ForegroundColor Green
