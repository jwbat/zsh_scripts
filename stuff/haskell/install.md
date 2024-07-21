[Haskell installation](https://www.haskell.org/ghcup/#)  

### GHCup  
`curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh`

### apply
`. /Users/james/.ghcup/env` (or restart terminal)

### llvm  
`brew install llvm`


system requirements for installing Haskell using GHCup on macOS, M1.

1. Command Line Tools:
   On macOS, Apple's Command Line Tools are necessary for many development tasks.  
   GHCup will prompt you to install these if they're not already present.  
   This includes essential tools like git, gcc, and make.

2. M1-specific requirement (LLVM):
   For M1 Macs (which use ARM architecture), there's an additional requirement.  
   You might need LLVM (Low Level Virtual Machine) installed.  
   LLVM is a collection of modular and reusable compiler and toolchain technologies.

   GHC (Glasgow Haskell Compiler) uses LLVM for code generation on ARM-based systems like M1 Macs.

   How to install LLVM:
   - use Homebrew: `brew install llvm`
   - after installation, you need to make sure the LLVM toolchain is in your PATH:  

```zsh
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
```

3. Rerunning the command:
   After installing the Command Line Tools (and LLVM if needed),  
   you'll need to run the GHCup installation command again to complete the process.

This message ensures that you have all the necessary components for a successful Haskell installation on your M1 MacBook,  
taking into account the specific requirements of the ARM architecture.

>  ===============================================================================
>  
>  OK! /Users/james/.zshrc has been modified. Restart your terminal for the changes to take effect,
>  or type ". /Users/james/.ghcup/env" to apply them in your current terminal session.
>  
>  ===============================================================================
>  
>  All done!
>  
>  To start a simple repl, run: `ghci`
>  
>  To start a new haskell project in the current directory, run:  
>  `cabal init --interactive`
>  
>  To install other GHC versions and tools, run:  
>  `ghcup tui`
>  
>  If you are new to Haskell, check out https://www.haskell.org/ghcup/steps/
