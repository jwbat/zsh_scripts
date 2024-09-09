## Rename Branch

while on branch A rename branch B to C 

```sh
git branch -m B C                                   # rename branch B to C
git push origin --delete B                          # delete remote B
git switch C                                        # switch to C
git push origin C                                   # push C to remote
git push --set-upstream origin C                    # set upstream for C
```
