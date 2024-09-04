rename another branch "B"
while on branch "A"

1. Rename local branch:
```sh
git branch -m B <new-name>
```

2. Rename remote branch:

   - Delete the old branch on the remote:
```sh
git push origin --delete B
```

   - Push renamed branch to remote:
```sh
git push origin <new-name>
```

   - Set upstream for renamed branch:
```sh
git push --set-upstream origin new-branch-name
```
