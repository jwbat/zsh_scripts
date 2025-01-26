### **Parameters for `vim.api.nvim_create_autocmd()`**
The function **`vim.api.nvim_create_autocmd()`** takes the following key-value parameters:

| Parameter   | Type        | Description                                                                                                                                   |
|-------------|-------------|-----------------------------------------------------------------------------------------------------------------------------------------------|
| `group`     | String/ID   | (Optional) The name or ID of the augroup to associate this autocmd with.                                                                     |
| `pattern`   | String/Table| (Optional) The file pattern(s) to match (e.g., `"*.lua"`, `"python"`, or `{"*.py", "*.lua"}`).                                                |
| `command`   | String      | (Optional) The Vimscript command to execute when the event is triggered (e.g., `"colorscheme sonokai"`).                                      |
| `callback`  | Function    | (Optional) A Lua function to execute when the event is triggered.                                                                             |
| `desc`      | String      | (Optional) A description for the autocmd, useful for debugging.                                                                               |
| `event`     | String/Table| The event(s) that trigger the autocmd (e.g., `"FileType"`, `"BufWritePre"`, or `{"BufEnter", "BufLeave"}`).                                   |
| `once`      | Boolean     | (Optional) If `true`, the autocmd is executed only once and then removed automatically.                                                       |
| `nested`    | Boolean     | (Optional) If `true`, allows the autocmd to be triggered recursively if it calls another autocmd.                                             |

---

### **Parameters Required for an Autocmd**
At a minimum, you need the following:
1. **`event`**: The event that triggers the autocmd (e.g., `"FileType"`).
2. Either:
   - **`command`**: A Vimscript command to execute.
   - **`callback`**: A Lua function to execute.

---

### **Example 1: Using `command`**
```lua
vim.api.nvim_create_autocmd("FileType", {
    group = vim.api.nvim_create_augroup("filetype_python", { clear = true }),
    pattern = "python",
    command = "colorscheme sonokai",
})
```

- **`command`**: Executes the Vimscript `:colorscheme sonokai` when the filetype is `python`.

---

### **Example 2: Using `callback`**
```lua
vim.api.nvim_create_autocmd("FileType", {
    group = vim.api.nvim_create_augroup("filetype_python", { clear = true }),
    pattern = "python",
    callback = function()
        vim.cmd("colorscheme sonokai") -- Set the colorscheme
        vim.api.nvim_set_hl(0, "LineNr", { ctermfg = 234, ctermbg = "none" }) -- Customize LineNr highlight
    end,
})
```

- **`callback`**: Executes Lua code for more advanced behaviors.

---

### **Key Difference Between `command` and `callback`**
- **`command`**: Runs a single Vimscript command as a string. It is simpler and more concise.
- **`callback`**: Allows you to write Lua code for complex or multi-step logic.

---

Would you like further examples or help organizing these settings? 😊
