# 1. Installation
`./install.sh`  

# 2. Usage
1. When you file write with `:w`, clang-format will be applied.  
You can change style of clang-format by editing g:clang-format#style\_options in ~/.vimrc  

2. With \\d (backslash + d), doxygen format will be auto-created.

3. You can move vim window with <Tab> in clockwise(<Shift-Tab> in anticlockwise).

4. With C-k (ctrl + k), you can comment the current line.  
With C-j (ctrl + j), you can uncomment the current line.  
With visual block, you could comment multiple line.

# 3. Caution
`install.sh` appends vim configurations to your ~/.vimrc.  
Please be careful if you already set vim configuration.
