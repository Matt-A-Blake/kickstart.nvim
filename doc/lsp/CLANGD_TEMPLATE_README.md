# clangd Configuration Template

This directory contains a `clangd.template` file that you can use to fix clangd's ability to find standard library headers in your C++ projects.

## Usage

1. **Copy the template to your project root:**
   `cp clangd.template /path/to/your/project/.clangd`

2. **Customize the template:**
   - Adjust the C++ standard version (`-std=c++17`, `-std=c++20`, etc.)
   - Update include paths if your system uses different compiler versions
   - Add project-specific include directories if needed

3. **Find your system's include paths:**
   If the default paths don't work, find your system's include paths with:
   ```bash
   g++ -E -x c++ - -v < /dev/null 2>&1 | grep -A 10 "^#include <...> search starts here:"
   ```
   Then update the `-I` paths in the `.clangd` file accordingly.

## When to Use This

Use a `.clangd` file when:
- clangd can't find standard library headers (`#include <iostream>`, etc.)
- You don't have a `compile_commands.json` file
- Your `compile_commands.json` is incomplete or missing include paths
- You need explicit control over compilation flags

## Alternative: Generate compile_commands.json

For better results, consider generating a `compile_commands.json` file using:
- **CMake**: `cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON .`
- **Bear**: `bear -- make` or `bear -- g++ -o myprog *.cpp`
- **compiledb**: `compiledb make`

The `.clangd` file works as a fallback when `compile_commands.json` is not available.

