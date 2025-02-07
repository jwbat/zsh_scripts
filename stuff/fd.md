- **Sane Defaults:** Unlike `find`, `fd` searches recursively **only within the current directory**,
ignores hidden files and `.gitignore`-listed files by default,
and uses regex patterns instead of globs.
- **User-Friendly Output:** Results are colorized and formatted for readability.
- **Parallel Execution:** `fd` performs parallel processing when possible.
- **Supports Path Exclusion:** Respects `.gitignore` automatically and allows manual exclusions.

1. **Find files matching a pattern**  
   ```sh
   fd pattern
   ```
   Example: Find all files containing "test" in their name:
   ```sh
   fd test
   ```

2. **Find specific file types**  
   ```sh
   fd -e rs       # Find Rust source files
   fd -e py       # Find Python files
   fd -e jpg -e png   # Find images (multiple extensions)
   ```

3. **Run commands on found files**  
   ```sh
   fd -x echo {}  # Print each found file
   fd -x rm {}    # Delete all found files (USE WITH CAUTION)
   ```

4. **Search hidden files and include ignored files**  
   ```sh
   fd -H    # Show hidden files
   fd -I    # Include files ignored by .gitignore
   ```

5. **Specify a search directory**  
   ```sh
   fd pattern /path/to/search
   ```

6. **Find directories only**  
   ```sh
   fd -t d
   ```

7. **Find executable files**  
   ```sh
   fd -t x
   ```
