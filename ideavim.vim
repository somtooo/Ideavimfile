" .ideavimrc is a configuration file for IdeaVim plugin. It uses
"   the same commands as the original .vimrc configuration.
" You can find a list of commands here: https://jb.gg/h38q75
" Find more examples here: https://jb.gg/share-ideavimrc
" Enable which-key extension
set which-key
set relativenumber
set showmode

" Disable which-key timeout, i.e. show the menu until you press a key
set notimeout
let g:WhichKey_ShowVimActions = "true"

" -- Suggested options --
" Show a few lines of context around the cursor. Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5
let mapleader = " "
set clipboard+=unnamedplus,unnamed

" Do incremental searching.
set incsearch

" Don't use Ex mode, use Q for formatting.
map Q gq

" --- Enable IdeaVim plugins https://jb.gg/ideavim-plugins

" Highlight copied text
Plug 'machakann/vim-highlightedyank'
" Commentary plugin
Plug 'tpope/vim-commentary'


"" -- Map IDE actions to IdeaVim -- https://jb.gg/abva4t
"" Map \r to the Reformat Code action
"map \r <Action>(ReformatCode)

"" Map <leader>d to start debug
"map <leader>d <Action>(Debug)

"" Map \b to toggle the breakpoint on the current line
"map \b <Action>(ToggleLineBreakpoint)


" Window
let g:WhichKeyDesc_Windows = "<leader>w    +windows"
" Split window right
let g:WhichKeyDesc_Windows_SplitWindowRightV = "<leader>wv split-window-right"
map <leader>wv <Action>(SplitVertically)

" Split window below
let g:WhichKeyDesc_Windows_SplitWindowBelowS = "<leader>ws split-window-below"
map <leader>ws <Action>(SplitHorizontally)

" Close Window
let g:WhichKeyDesc_Windows_DeleteWindow = "<leader>wd delete-window"
map <leader>wd <Action>(CloseAllEditors)


" Buffers
let g:WhichKeyDesc_Buffers = "<leader>b   +buffers"

" Switch among recently opened files
let g:WhichKeyDesc_Buffers_ListBuffers = "<leader>bb    list-buffers"
map <leader>bb <Action>(RecentFiles)

"Close current tab
let g:WhichKeyDesc_Buffers_KillBuffer = "<leader>bd   kill-buffer"
map <leader>bd <Action>(CloseContent)

" Next Tab
let g:WhichKeyDesc_Buffers_NextBuffer = "<leader>bn    next-buffer"
map <leader>bn <Action>(NextTab)

" Previous Tab
let g:WhichKeyDesc_Buffers_PreviousBuffer = "<leader>bp    previous-buffer"
map <leader>bp <Action>(PreviousTab)

" Reopen last closed tab
let g:WhichKeyDesc_Buffers_ReopenLastKilledBuffer = "<leader>bu    reopen-last-killed-buffer"
map <leader>bu <Action>(ReopenClosedTab)

" Close a window together with its tabs
let g:WhichKeyDesc_Buffers_KillBufferAndCloseWindow = "<leader>bx   kill-buffer-and-close-window"
map <leader>bx <Action>(CloseAllEditors)

" Close other tabs in current window
let g:WhichKeyDesc_Buffers_KillOtherBuffers = "<leader>b<C-d>    kill-other-buffers"
map <leader>b<C-d> <Action>(CloseAllEditorsButActive)


" Errors
let g:WhichKeyDesc_Errors = "<leader>e    +errors"

" List errors
let g:WhichKeyDesc_Errors_ListErrors = "<leader>el list-errors"
map <leader>el <Action>(CodeInspection.OnEditor)

" Go to next error
let g:WhichKeyDesc_Errors_NextError =  "<leader>en next-error"
map <leader>en <Action>(GotoNextError)

" Go to previous error
let g:WhichKeyDesc_Errors_PreviousErrorAlt =  "<leader>ep previous-error"
map <leader>ep <Action>(GotoPreviousError)

" Edit inspection settings
let g:WhichKeyDesc_Errors_OpenInspectionSettings =  "<leader>es inspection-settings"
map <leader>es <Action>(PopupHector)

" Explain error at cursor
let g:WhichKeyDesc_Errors_ExplainError = "<leader>ex explain-error"
map <leader>ex <Action>(ShowErrorDescription)


" Files
let g:WhichKeyDesc_Files = "<leader>f    +files"
"Find In Files
let g:WhichKeyDesc_Files_GotoFile =  "<leader>/ find-in-file"
map <leader>/ <Action>(FindInPath)

" Copy file path
let g:WhichKeyDesc_Files_YankCopy_FilePath =  "<leader>fyy file-path"
map <leader>fyy <Action>(CopyAbsolutePath)

" Rename file
let g:WhichKeyDesc_Files_Rename = "<leader>fR rename"
map <leader>fR <Action>(RenameFile)

" Recent files
let g:WhichKeyDesc_Files_Recent = "<leader>fr recent"
map <leader>fr <Action>(RecentFiles)

" Select file in Project view
let g:WhichKeyDesc_Files_Select_Project_View = "<leader>fs select-file-in-project-view"
map <leader>fs <Action>(SelectInProjectView)


" Git
let g:WhichKeyDesc_GitVcs = "<leader>g +git"

"Git Rebase
let g:WhichKeyDesc_GitVcs_Rebase = "<leader>gr git-rebase"
map <leader>gr <Action>(Git.Rebase)

" Leader
" Activate terminal window
let g:WhichKeyDesc_Leader_OpenShell2 = "<leader>' open-shell"
map <leader>'    <Action>(ActivateTerminalToolWindow)


" Refactorings

" Debug
