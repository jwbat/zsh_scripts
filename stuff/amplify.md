### Setup

```zsh
npm install -g @aws-amplify/cli         # update
amplify --version                       # 12.12.6
amplify configure --profile james       # use personal account
amplify configure list
amplify init --profile james
amplify add hosting
```

### Common commands

```zsh
amplify status          # show you what you've added already and if it's locally configured or deployed
amplify add             # <category> will allow you to add features like user login or a backend API
amplify push            # will build all your local backend resources and provision it in the cloud
amplify console         # to open the Amplify Console and view your project status
amplify publish         # will build all your local backend and frontend resources 
                        # (if you have hosting category added) and provision it in the cloud
```
