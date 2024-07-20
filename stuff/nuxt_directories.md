## Nuxt Directory Structure
#### >> with deploy to GitHub Pages

```plaintext
<projectname>/
    ├── .nuxt/
    ├── dist/
    ├── node_modules/
    ├── pages/
    ├── static/
    │   ├── images/
    │   │   ├── example1.jpg
    │   │   ├── example2.png
    │   │   └── ...
    ├── assets/
    │   ├── images/
    │   │   ├── example1.jpg
    │   │   ├── example2.png
    │   │   └── ...
    ├── components/
    ├── layouts/
    ├── middleware/
    ├── plugins/
    ├── store/
    ├── .git/
    │   ├── ...
    │   ├── refs/
    │   │   └── heads/
    │   │       └── gh-pages
    ├── .gitignore
    ├── nuxt.config.js
    ├── package.json
    ├── README.md
    ├── yarn.lock
    └── package-lock.json
```

### Directories and Files:

1. **`<projectname>/`**: Root directory of Nuxt project.
2. **`.nuxt/`**: Directory created by Nuxt for build artifacts and temporary files.
3. **`dist/`**: Directory containing the generated static files, ready to be deployed to GitHub Pages.
4. **`node_modules/`**: Directory containing all the npm packages required by project.
5. **`pages/`**: Directory where Nuxt application's page components are stored.
6. **`static/`**: Directory for static assets that are served directly without processing.
   - **`static/images/`**: Directory within `static` where we can store static image files that won't be processed by Webpack. These images are directly accessible via the root URL (e.g., `/images/example1.jpg`).
7. **`assets/`**: Directory for assets that will be processed by Webpack (e.g., SCSS files, image files).
   - **`assets/images/`**: Directory within `assets` where we can store images that will be processed by Webpack. These images can be referenced in components and styles.
8. **`components/`**: Directory for Vue components used throughout project.
9. **`layouts/`**: Directory for layout components that wrap page components.
10. **`middleware/`**: Directory for middleware functions that run before rendering pages.
11. **`plugins/`**: Directory for JavaScript plugins to run before mounting the root Vue.js application.
12. **`store/`**: Directory for Vuex store files (if using Vuex for state management).
13. **`.git/`**: Directory for Git version control (including the `gh-pages` branch reference after deployment).
14. **`.gitignore`**: File specifying which files and directories to ignore in Git.
15. **`nuxt.config.js`**: Main configuration file for Nuxt project.
16. **`package.json`**: File containing metadata about project and its dependencies.
17. **`README.md`**: Documentation file for project.
18. **`yarn.lock`**: Lock file for Yarn package manager (if using Yarn).
19. **`package-lock.json`**: Lock file for npm package manager.

### Image Storage
- **`static/images/`**: Use this directory to store image files that we want to serve directly from the root URL without any processing. This is useful for images that won't change often and don't need to be optimized or processed by Webpack.
  - Example usage in HTML: `<img src="/images/example1.jpg" alt="Example Image">`
- **`assets/images/`**: Use this directory to store images that need to be processed by Webpack. This is useful if we want to optimize images, use them in CSS/SCSS, or import them directly into Vue components.
  - Example usage in a Vue component:

```javascript
<template>
  <img :src="require('~/assets/images/example1.jpg')" alt="Example Image">
</template>
```
