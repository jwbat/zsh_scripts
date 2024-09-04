### get image dimensions

```zsh
identify -format "%wx%h" logo.png               # ImageMagick
sips -g pixelWidth -g pixelHeight logo.png      # macOS builtin
```
