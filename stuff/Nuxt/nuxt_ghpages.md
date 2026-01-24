
```zsh
npx create-nuxt-app <projectname> && cd projectname
npm run dev
```

##### edit `nuxt.config.js` file

```javascript
export default {
 target: 'static'
}
```

#### edit `nuxt.config.js` 

```javascript
export default {
  target: 'static',
  router: {
    base: '/<repository>/'
  }
}
```

##### install gh-pages
```zsh
npm install --save-dev gh-pages
```

##### generate static files (build + generate)

```zsh
npm run generate
```

##### deploy static files

```zsh
npx gh-pages -d dist
```

##### optionally add deploy script

```javascript
"scripts": {
  "deploy": "npm run generate && npx gh-pages -d dist"
}
```

