## Hoogle

```zsh
cabal update  
cabal install hoogle
hoogle --version
```

Use Hoogle to search for functions, types, and modules.
Hoogle is a Haskell API search engine.
This can help you see what functions are available in a particular module.
You can access Hoogle online at Hoogle or use it locally if you have it installed.

---

```zsh
hoogle generate
```

run in any directory to download and generate the Hoogle databases useable globally,
available to all Haskell projects in all directories.

when we run `hoogle generate`:

1. **Database Generation**   
    Hoogle downloads information about all Haskell packages available in Hackage and generates a local database.

2. **Global Availability**  
    The generated database is stored in a location that Hoogle can access regardless of where you run it from.

### Checking the Generated Database

After running `hoogle generate`, verify that the database has been created and is available globally:

1. **Hoogle Search**   Perform a search to see if Hoogle can access the generated database.  

```zsh
hoogle search putStrLn
```
to return information about the `putStrLn` function and indicate that the database is available.

2. **Hoogle Server** (optional):  Start a local Hoogle server to browse the documentation in your web browser.  

```zsh
hoogle server
```
Open the provided URL in a browser to access the Hoogle web interface.
