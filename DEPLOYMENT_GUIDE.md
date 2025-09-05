# Digital Garage Landing Page - Netlify Deployment Guide

## Quick Deployment Options

### Option 1: Direct Folder Upload (Recommended if build fails locally)
1. Go to [netlify.com](https://netlify.com) and sign up/login
2. Click "Sites" then "Add new site" → "Deploy manually"
3. Drag and drop the entire `digital-garage-landing` folder
4. Netlify will automatically build it using the `netlify.toml` configuration

### Option 2: Git Repository Deployment (Recommended)
1. Initialize git repository:
   ```bash
   git init
   git add .
   git commit -m "Initial commit: Digital Garage landing page"
   ```

2. Create a repository on GitHub/GitLab
3. Push your code:
   ```bash
   git remote add origin YOUR_REPO_URL
   git push -u origin main
   ```

4. On Netlify:
   - Click "Add new site" → "Import an existing project"
   - Connect your Git provider
   - Select your repository
   - Build settings will be auto-detected from `netlify.toml`

### Option 3: Netlify CLI (If npm issues are resolved)
```bash
npm install -g netlify-cli
netlify login
netlify deploy --prod
```

## Project Configuration

✅ **Already configured for you:**
- `netlify.toml` - Build and redirect settings
- `public/_redirects` - Client-side routing support
- Optimized build settings
- Caching headers for performance

## Build Settings (Auto-detected)
- **Build command:** `npm run build`
- **Publish directory:** `dist`
- **Node version:** 18

## Custom Domain Setup (Optional)
Once deployed, you can:
1. Go to Site settings → Domain management
2. Add your custom domain
3. Netlify will provide SSL certificate automatically

## Environment Variables (If needed)
- Go to Site settings → Environment variables
- Add any API keys or configuration

## Your site will be available at:
`https://RANDOM-NAME.netlify.app`

You can change the site name in Site settings → General → Site details.

## Troubleshooting
- If build fails, check the deploy log in Netlify
- Make sure all dependencies are in package.json
- Ensure the build output goes to `dist/` folder

---
**Ready for deployment!** 🚀