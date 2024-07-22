
1. LLVM (Low Level Virtual Machine):
   - It's not a single executable, but a collection of modular compiler and toolchain technologies.
   - Key components include clang (C/C++ compiler), llvm-as (assembler), llvm-link (linker), and many others.
   - Installing LLVM installs an entire suite of tools each with its own executable.  

2. Common LLVM executables:
   - clang: The C/C++/Objective-C compiler
   - llvm-config: Provides information about the installed LLVM libraries
   - opt: The LLVM optimizer
   - llc: The LLVM static compiler

For Haskell development on M1 Macs, the GHC (Glasgow Haskell Compiler) uses LLVM's  
tools behind the scenes for code generation and optimization.  
Thus, having LLVM installed and in PATH is important for Haskell development on these systems.

