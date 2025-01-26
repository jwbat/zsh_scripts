configuration starting with `vim.api...` typically indicates 
that you’re calling **NeoVim's API functions**.
These API functions are NeoVim's way of exposing Vimscript functionality to Lua,
providing a bridge between the two.
The reason for this is that NeoVim doesn't yet have native Lua alternatives for everything,
so the API provides access to underlying Vim functionality.

---

### Why Use `vim.api...`?

NeoVim offers Lua as a modern scripting alternative to Vimscript. However, much of the functionality, especially for core operations like highi, commands, and mappings, is still based on Vim's legacy architecture. To bridge the gap, NeoVim provides the `vim.api` module, which acts as a Lua-accessible interface to these functions.

For example:
- `vim.api.nvim_set_hl()` allows you to set highlight groups.
- `vim.api.nvim_buf_set_lines()` lets you manipulate buffer content.
- `vim.api.nvim_command()` lets you run any Vim command from Lua.

These are Lua wrappers for functionality that historically existed only in Vimscript.

---

### Key Reasons for Using `vim.api`:
1. **Lua as a First-Class Language**:
   - Instead of writing Vimscript directly, you can now leverage Lua, which is faster, more modern, and easier to use.
2. **Uniform Access**:
   - Even for features that don't yet have native Lua equivalents, you can use `vim.api` as a bridge.

---

### Will There Be Native Lua Alternatives in the Future?
NeoVim is actively expanding its Lua support. Over time, the community is building more **native Lua APIs** for configuration. For example:
- Some new features like `vim.opt` (for setting options) and `vim.keymap.set` (for mappings) are designed to feel more native to Lua.
- Eventually, more Lua-specific abstractions may replace many `vim.api` calls, but for now, `vim.api` is the go-to for core Vimscript-like functionality.

---

### Examples: Lua vs. Vimscript
Here’s a comparison of how `vim.api` is used in Lua to replicate Vimscript functionality:

1. **Set Highlights**:
   - Vimscript:
     ```vim
     highlight Folded guibg=NONE
     ```
   - Lua:
     ```lua
     vim.api.nvim_set_hl(0, "Folded", { bg = "NONE" })
     ```

2. **Set a Mapping**:
   - Vimscript:
     ```vim
     nnoremap <leader>w :w<CR>
     ```
   - Lua (native Lua alternative with `vim.keymap.set`):
     ```lua
     vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
     ```

3. **Run a Command**:
   - Vimscript:
     ```vim
     command! Hello echo "Hello, World!"
     ```
   - Lua:
     ```lua
     vim.api.nvim_create_user_command('Hello', function()
         print("Hello, World!")
     end, {})
     ```
---

To translate the `inoremap` mappings to Lua, you can use the `vim.keymap.set` function,
which is the preferred way to define key mappings in Lua. Here's the equivalent:

```lua
vim.keymap.set('i', 'jk', '<esc>:w<cr>', { noremap = true, silent = true })
vim.keymap.set('i', 'kj', '<esc>:w<cr>', { noremap = true, silent = true })
```

---

### Explanation:
1. **`vim.keymap.set`**:
   - A Lua-native API for defining key mappings in NeoVim.
   - Replaces Vimscript's `map`, `noremap`, `imap`, etc.

2. **`'i'`**:
   - The first argument specifies the mode. `'i'` means **insert mode**.

3. **`'jk'` / `'kj'`**:
   - The second argument specifies the key sequence to map.

4. **`'<esc>:w<cr>'`**:
   - The third argument specifies the action:
     - `<esc>`: Exit insert mode.
     - `:w<cr>`: Save the file.

5. **`{ noremap = true, silent = true }`**:
   - Options for the mapping:
     - `noremap = true`: Ensures the mapping is non-recursive (doesn’t trigger other mappings).
     - `silent = true`: Suppresses output of the `:w` command in the command area.

---

### Advantages of Using `vim.keymap.set`:
- **Flexibility**: Works across all modes (`'n'`, `'i'`, `'v'`, etc.).
- **Readability**: The syntax is more consistent and clear compared to Vimscript.

---

### **Syntax: `:lcd %:p:h`**
- **Expands to**: Change the working directory of the current window to the directory of the current file.
  - `%`: The current file's path.
  - `:p`: Expands to the absolute path of the file.
  - `:h`: Extracts the directory part of the path.
  - `lcd`: Sets the current window's working directory to this directory.

#### Example:
If the current file is `~/projects/main.lua`:
```vim
:lcd %:p:h
```
1. `%` expands to `~/projects/main.lua`.
2. `:p` ensures it is an absolute path.
3. `:h` extracts `~/projects`.
4. `lcd` sets `~/projects` as the current window's working directory.

---

### **Why Add `pwd` After `lcd`?**
The `pwd` command prints the current working directory. After changing it with `lcd`, running `pwd` confirms or displays the updated directory.

#### Example:
```vim
:lcd %:p:h | pwd
```
1. Changes the working directory to the current file's directory.
2. Prints the new directory in the command area.

---

### Summary of Key Points:
1. **`lcd`**: Local working directory for the window.
2. **`%`**: Current file path.
3. **`:p`**: Expands to an absolute path.
4. **`:h`**: Extracts the directory from the file path.

---
