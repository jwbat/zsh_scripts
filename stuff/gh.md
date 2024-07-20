## GitHub CLI

`brew install gh`

`gh --version`

`gh auth login`

`gh auth status`    (logged in)

***

1. **Clone a repository:**
   ```sh
   gh repo clone jwbat/project-name
   gh repo clone ventacity/sbp-mono
   ```

2. **Create a new repository:**
   ```sh
   gh repo create new-repo-name
   ```

3. **View repository details:**
   ```sh
   gh repo view owner/repo
   ```

4. **Create a pull request:**
   ```sh
   gh pr create --title "Pull Request Title" --body "Description of the pull request"
   ```

5. **Check the status of your authentication:**
   ```sh
   gh auth status
   ```
