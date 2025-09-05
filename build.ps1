# Build script for Digital Garage Landing Page

Write-Host \"🚀 Building Digital Garage Landing Page...\" -ForegroundColor Green

# Install dependencies
Write-Host \"📦 Installing dependencies...\" -ForegroundColor Yellow
try {
    npm ci
} catch {
    Write-Host \"npm ci failed, trying npm install...\" -ForegroundColor Yellow
    npm install
}

# Build the project
Write-Host \"🔨 Building project...\" -ForegroundColor Yellow
npm run build

# Check if build succeeded
if (Test-Path \"dist\") {
    Write-Host \"✅ Build successful! Files ready in dist/ folder\" -ForegroundColor Green
    Write-Host \"📁 Build contents:\" -ForegroundColor Cyan
    Get-ChildItem dist/
} else {
    Write-Host \"❌ Build failed - dist folder not found\" -ForegroundColor Red
    exit 1
}

Write-Host \"🎉 Ready for deployment!\" -ForegroundColor Green