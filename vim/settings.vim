set background=dark
colorscheme solarized

noremap <silent> ,o :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_focus_on_files = 1

nmap ,ag :Ack! ""<Left>
let g:ackprg = 'rg --vimgrep --smart-case'

nnoremap <silent> ,t :CtrlP<CR>
noremap <silent> ,b :CtrlPBuffer<cr>)
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files . --cached --exclude-standard --others']

let vim_markdown_preview_hotkey='<C-m>'

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['gofmt', 'golint', 'govet']
let g:syntastic_python_checkers = ['python']
let g:syntastic_mode_map = {
  \ 'mode': 'active',
  \ 'passive_filetypes': ['scala', 'html']
  \ }

let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'component': {
  \   'readonly': '%{&readonly?"":""}',
  \ },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' }
  \ }
