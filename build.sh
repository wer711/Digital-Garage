#!/bin/bash
# Build script for Digital Garage Landing Page

echo \"🚀 Building Digital Garage Landing Page...\"

# Install dependencies
echo \"📦 Installing dependencies...\"
npm ci || npm install

# Build the project
echo \"🔨 Building project...\"
npm run build

# Check if build succeeded
if [ -d \"dist\" ]; then
    echo \"✅ Build successful! Files ready in dist/ folder\"
    echo \"📁 Build contents:\"
    ls -la dist/
else
    echo \"❌ Build failed - dist folder not found\"
    exit 1
fi

echo \"🎉 Ready for deployment!\"