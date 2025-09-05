# Digital Garage Landing Page - Deployment Troubleshooting Guide

## 🚨 **Common Issues & Solutions**

### Issue 1: Build Failures on Netlify/GitHub

**Symptoms:**
- Build fails with "Module not found" errors
- "npm run build" fails
- Dependencies not installing properly

**Solutions:**

#### For Netlify:
1. **Check Build Settings:**
   - Build command: `npm ci && npm run build`
   - Publish directory: `dist`
   - Node version: 18

2. **Manual Deploy (if auto-deploy fails):**
   ```bash
   # In your local terminal (if npm works locally)
   cd digital-garage-landing
   npm install
   npm run build
   ```
   Then drag the `dist` folder to Netlify's manual deploy

3. **Alternative Build Command:**
   Try changing build command in Netlify to:
   ```bash
   npm install --legacy-peer-deps && npm run build
   ```

#### For GitHub Pages:
1. **Enable GitHub Pages:**
   - Go to repository Settings → Pages
   - Source: "GitHub Actions"
   - The workflow file is already configured

2. **Manual GitHub Pages Setup:**
   - Build locally and push `dist` folder
   - Set Pages source to `dist` folder

### Issue 2: White Screen / App Not Loading

**Symptoms:**
- Site loads but shows blank white screen
- Console errors about missing files

**Solutions:**

1. **Check Base URL Configuration:**
   - Already fixed in `vite.config.js` with `base: './`

2. **Verify _redirects file:**
   - File exists at `public/_redirects`
   - Contains: `/*    /index.html   200`

### Issue 3: React App Not Working on Refresh

**Solutions:**
- ✅ Already configured in `netlify.toml`
- ✅ Redirects setup in `_redirects`

## 🛠 **Step-by-Step Deployment**

### Option 1: Netlify (Recommended)

1. **Drag & Drop Method:**
   - Go to [netlify.com](https://netlify.com)
   - "Sites" → "Add new site" → "Deploy manually"
   - Drag entire `digital-garage-landing` folder
   - Wait for build to complete

2. **Git Repository Method:**
   ```bash
   # Initialize git (if not done)
   git init
   git add .
   git commit -m "Digital Garage landing page"
   
   # Push to GitHub
   git remote add origin YOUR_GITHUB_REPO_URL
   git push -u origin main
   ```
   
   Then on Netlify:
   - "Import an existing project"
   - Connect GitHub
   - Select repository
   - Deploy settings are auto-detected

### Option 2: GitHub Pages

1. **Push to GitHub:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git remote add origin YOUR_REPO_URL
   git push -u origin main
   ```

2. **Enable GitHub Actions:**
   - Go to repository → Actions tab
   - Enable workflows
   - The deploy action will run automatically

### Option 3: Manual Build & Deploy

If automated builds fail:

1. **Build Locally (if possible):**
   ```bash
   npm install
   npm run build
   ```

2. **Deploy dist folder:**
   - Upload `dist` folder contents to any static hosting
   - Or drag `dist` folder to Netlify manual deploy

## 🔧 **Configuration Files Explained**

### `netlify.toml`
- ✅ Build command with npm ci for clean installs
- ✅ SPA redirects for React Router
- ✅ Asset caching for performance
- ✅ Security headers

### `vite.config.js`
- ✅ Relative paths for any domain
- ✅ Optimized build output
- ✅ Asset organization

### `.github/workflows/deploy.yml`
- ✅ Automated GitHub Pages deployment
- ✅ Node.js 18 environment
- ✅ Clean dependency installation

## 📱 **Expected Results**

After successful deployment:
- ✅ Fast loading landing page
- ✅ Responsive design works on all devices
- ✅ All sections render correctly
- ✅ Contact form is functional
- ✅ Smooth scrolling navigation
- ✅ Professional Digital Garage branding

## 🆘 **Still Having Issues?**

### Check These:
1. **Node.js Version:** Use Node 16-18
2. **Dependencies:** All packages in package.json are valid
3. **Build Output:** `dist` folder should contain index.html and assets
4. **Console Errors:** Check browser dev tools for errors

### Alternative Hosting Options:
- Vercel (similar to Netlify)
- Surge.sh (simple static hosting)
- Firebase Hosting
- AWS S3 + CloudFront

### Quick Test:
If the site works locally (`npm run dev`), the issue is with deployment configuration, not the code.

---
**Your Digital Garage landing page is ready! 🚀**

Need help? Check the build logs in your hosting platform for specific error messages.