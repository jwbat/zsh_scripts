
| Symbol | Context Type       | Example Usage                       | What It Does                                                                 |
|--------|-------------------|-------------------------------------|-------------------------------------------------------------------------------|
| `@`    | Symbols / Code    | `@parse_args` or `@DataClass` | Pulls in a function, class, or variable from your codebase into the AI prompt. |
| `#`    | Files             | `#app.py` or `#helpers/db.py` | Includes the contents (or relevant parts) of a specific file.                  |
| `/`    | Commands          | `/explain` or `/test`               | Runs a built-in AI command (e.g. explain code, generate tests, add docstrings). |


## Cursor Context References

Cursor lets you guide the AI by referencing **symbols**, **files**, and **commands** directly in your prompt.  
This makes answers more accurate and grounded in your codebase.

---

### Symbols (`@`)
Use `@` to reference functions, classes, or variables.

- `@handleRequest` → includes the `handleRequest` function.  
- `@UserService` → includes the `UserService` class.  

---

### Files (`#`)
Use `#` to reference files.  
Cursor will include the whole file if it’s small, or just the relevant parts if it’s large.

- `#server.js` → includes the `server.js` file (or relevant sections).  
- `Fix how #auth.py handles tokens` → pulls in `auth.py` and focuses on token handling.  

You can combine file + symbol for more precision:  
- `Update @loginHandler in #server.js to support OAuth`  

---

### Commands (`/`)
Use `/` to run built-in AI actions.

- `/explain` → explain the selected code.  
- `/test` → generate tests.  
- `/docstring` → add or improve a docstring.  

---

### Putting it together
You can mix these for powerful prompts:

- `Refactor @UserService in #auth.py — /explain`  
- `In #server.js, update @loginHandler and @logoutHandler to support JWT`  
- `Add error handling to #database.ts — /test after changes`  
