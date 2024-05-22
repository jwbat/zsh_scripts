## Discarding Local Changes (Hard Reset)
To discard local changes and make the local branch exactly match the remote branch,
use `git reset --hard`.

1. Fetch the latest changes from the remote

`git fetch origin`

2. Reset the local branch to match the remote branch

`git reset --hard origin/your-branch-name`
