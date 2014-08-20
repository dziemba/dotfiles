noremap <silent> ,o :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_focus_on_files = 1

nmap ,ag :Ag ""<Left>
nmap ,af :AgFile ""<Left>

let g:ctrlp_user_command =
  \ 'ag %s --files-with-matches -g "" --ignore "\.git$'
let g:ctrlp_use_caching = 0

let g:ctrlp_by_filename = 1
let g:ctrlp_switch_buffer = 0
let g:ctrlp_map = ',t'
nnoremap <silent> ,t :CtrlP<CR>
noremap <silent> ,b :CtrlPBuffer<cr>)

nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'component': {
  \   'readonly': '%{&readonly?"":""}',
  \ },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' }
  \ }
