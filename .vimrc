if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Always show the status line
set laststatus=2

" Highlight the screen line of the cursor with CursorLine
set cursorline

" Print the line number in front of each line.
set number

" Show the line and column number of the cursor position, separated by a comma
set ruler

" Show command in the last line of the screen
set showcmd

" Always use two spaces for indentation
set expandtab
set shiftwidth=2
set softtabstop=2

" Automatically wrap lines at 79
set textwidth=79

" Automatically reload file if it has been changed outside of Vim
set autoread

