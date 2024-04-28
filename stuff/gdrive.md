
use `gdrive` to upload PDFs and manage folders:

1. **Install `gdrive`**

   You can install `gdrive` using various package managers or by downloading the binary
   directly from the GitHub repository: https://github.com/gdrive-org/gdrive

2. **Authenticate with Google Drive**

   Before you can use `gdrive`, you need to authenticate with your Google account.
   You can do this by running the following command:

   ```
   gdrive about
   ```

   This will prompt you to visit a URL and enter an authorization code.

3. **Upload PDFs**

   To upload a PDF to Google Drive, use the `upload` command:

   ```
   gdrive upload path/to/file.pdf
   ```

   You can also upload multiple files at once:

   ```
   gdrive upload path/to/file1.pdf path/to/file2.pdf path/to/directory
   ```

4. **Create Folders**

   To create a new folder in Google Drive, use the `mkdir` command:

   ```
   gdrive mkdir FolderName
   ```

5. **List Files and Folders**

   To list the contents of a folder, use the `list` command:

   ```
   gdrive list
   ```

   This will show you all the files and folders in the current directory.

6. **Move Files**

   You can move files between folders using the `move` command:

   ```
   gdrive move file.pdf FolderName
   ```

   This will move `file.pdf` into the `FolderName` folder.

There are many more features and options available with `gdrive`,
such as sharing files, updating file descriptions, and syncing local
directories with Google Drive. You can find detailed documentation and examples
on the `gdrive` GitHub repository: https://github.com/gdrive-org/gdrive

Keep in mind that while `gdrive` is a convenient command-line tool,
it's essential to follow best practices when handling sensitive or confidential data,
such as implementing appropriate access controls and encryption when necessary.
