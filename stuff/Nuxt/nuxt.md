```zsh
nvm install node            # install the latest version
nvm use node                # switch to latest version      (v22.6.0)
```

```zsh
npm list nuxt               # see version in project
npm list -g nuxt            # see global version
npm show nuxt version       # see latest available version
```

### start new project

```zsh
npx nuxi init <name>        # create and configure project with <name>

npm install
config for static site      # see below
npm run generate            # build & generate site.
                            #   this command will generate a `dist` directory with all static files,
                            #   which can then deploy to any static hosting service
npm run preview             # test project locally
                            #   this will serve the generated static site locally,
                                for preview before deploy
```

### **Configure for a Static Site:**
Nuxt 3 automatically handles static site generation if 
you deploy with the appropriate commands,
but it's good to ensure your configuration is correct.

- Open `nuxt.config.ts` and ensure `target` is set to `'static'`:
```typescript
export default defineNuxtConfig({
  // other configurations
  target: 'static',
});
```
yarn generate
```

