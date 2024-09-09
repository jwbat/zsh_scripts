## Discard Changes

To discard local changes and make the local branch exactly match the remote branch

```zsh
git reset --hard                        # reset current branch to the latest commit and
                                        # discard all changes in cwd and index (staging)
git fetch origin                        # fetch latest changes from remote
git reset --hard origin/<branch-name>   # reset local branch to match remote branch
```

```zsh
git checkout -- .                       # discard not yet staged changes
git reset HEAD .                        # discard staged changes not yet committed
git reset --hard HEAD                   # discard all local changes, incl uncommitted & unstaged
```
