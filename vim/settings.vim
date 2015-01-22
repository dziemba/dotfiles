set background=dark
colorscheme solarized

noremap <silent> ,o :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_focus_on_files = 1

nmap ,ag :Ag ""<Left>
nmap ,af :AgFile ""<Left>

let g:ctrlp_map = ',t'
nnoremap <silent> ,t :CtrlP<CR>
noremap <silent> ,b :CtrlPBuffer<cr>)

nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

let g:syntastic_ruby_checkers = ['mri', 'rubocop']

let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'component': {
  \   'readonly': '%{&readonly?"":""}',
  \ },
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' }
  \ }
