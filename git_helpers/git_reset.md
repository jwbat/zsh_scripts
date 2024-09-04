# Discarding Local Changes (Hard Reset)

To discard local changes and make the local branch exactly match the remote branch -

1. Reset the current branch to the latest commit,
discarding all changes in the working directory and index (staging)

`git reset --hard`

2. Fetch the latest changes from the remote

`git fetch origin`

3. Reset the local branch to match the remote branch

`git reset --hard origin/<branch-name>`


# Discard not yet staged changes

`git checkout -- .`

# Discard staged changes not yet committed

`git reset HEAD .`

# Discard all local changes, incl uncommitted & unstaged

`git reset --hard HEAD`

