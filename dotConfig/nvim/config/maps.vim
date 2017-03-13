let mapleader = "\<c-q>"

let g:user_emmet_leader_key='<c-y>'
imap <leader>, <c-y>,
vmap <leader>, <c-y>,

xmap gl <Plug>(EasyAlign)
nmap gl <Plug>(EasyAlign)

" s{char}{char} to move to {char}{char}
nmap <leader>s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

nnoremap <silent> <c-h>h :TmuxNavigateLeft<cr>
nnoremap <silent> <c-h>j :TmuxNavigateDown<cr>
nnoremap <silent> <c-h>k :TmuxNavigateUp<cr>
nnoremap <silent> <c-h>l :TmuxNavigateRight<cr>
" nnoremap <silent> <c-h>o :TmuxNavigatePrevious<cr>

" Make visual mode yank / paste leave cursor at end, making it easier to
" repeat the command
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Source vim again
nnoremap gv :source ~/.config/nvim/init.vim<cr>

" Tab navigation
nnoremap <silent> <leader>0 :tabn 1<cr>
tnoremap <silent> <leader>0 <C-\><C-n>:tabn 1<cr>
nnoremap <silent> <leader>1 :tabn 2<cr>
tnoremap <silent> <leader>1 <C-\><C-n>:tabn 2<cr>
nnoremap <silent> <leader>2 :tabn 3<cr>
tnoremap <silent> <leader>2 <C-\><C-n>:tabn 3<cr>
nnoremap <silent> <leader>3 :tabn 4<cr>
tnoremap <silent> <leader>3 <C-\><C-n>:tabn 4<cr>
nnoremap <silent> <leader>4 :tabn 5<cr>
tnoremap <silent> <leader>4 <C-\><C-n>:tabn 5<cr>
nnoremap <silent> <leader>5 :tabn 6<cr>
tnoremap <silent> <leader>5 <C-\><C-n>:tabn 6<cr>
nnoremap <silent> <leader>6 :tabn 7<cr>
tnoremap <silent> <leader>6 <C-\><C-n>:tabn 7<cr>
nnoremap <silent> <leader>7 :tabn 8<cr>
tnoremap <silent> <leader>7 <C-\><C-n>:tabn 8<cr>
nnoremap <Leader>; :exe "tabn ".g:lasttab<CR>
tnoremap <Leader>; <C-\><C-n>:exe "tabn ".g:lasttab<CR>
nnoremap <silent> <leader>n :tabn<cr>
tnoremap <silent> <leader>n <C-\><C-n>:tabn<cr>
nnoremap <silent> <leader>p :tabp<cr>
tnoremap <silent> <leader>p <C-\><C-n>:tabp<cr>

nnoremap <silent> <leader>d :ZoomToggle<CR>

" Lists
nnoremap <silent> g/ :History/<cr>
nnoremap <silent> g; :History:<cr>
nnoremap <silent> g? :Helptags<cr>
nnoremap <silent> gx :Commands<cr>

" UltiSnips
nnoremap <silent> gi :UltiSnipsEdit<cr>

" Window movement
nnoremap <silent> <C-k> <C-w><C-w>
nnoremap <silent> <leader><space> <C-w><C-w>

" Quit
nnoremap <silent> Q :q<cr>

" Reload current buffer
nnoremap <silent> gr :e<cr>

" Open file under cursor in new tab
nnoremap <silent> <C-j> :vertical wincmd F<CR>

" Save shortcuts
nnoremap <C-s> :w<cr>
inoremap <C-s> <ESC>:w<cr>

" Opening files / buffers using fzf
nnoremap <silent> <leader>k :FZF<cr>
nnoremap <silent> <leader>j :Buffers<cr>

" Opening files manually
nnoremap <leader>e :e<space>%:h/
nnoremap <C-p> :e<space>

" Python stuff
nnoremap <leader>i :Isort<cr>
nnoremap <silent> <leader>a :ArgWrap<CR>
nnoremap <silent> <leader>g :RopeGotoDefinition<cr>

" Find in files
nnoremap ga :Ag<space>

" Completion using fzf in insert mode
imap <c-x><c-f> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Clear highlighting after search
nnoremap <silent> gn :noh<cr>

" Various displays
nnoremap <silent> gu :UndotreeToggle<cr>
nnoremap <silent> gf :NERDTreeToggle<cr>
nnoremap <silent> gk :Goyo<cr>

" Commenting things out
nmap <bslash><bslash> gcc
nmap <bslash> gc
vmap <bslash> gc

" Move file
nnoremap gm :!cp<space>%<space>%:h/

" Ctags
nnoremap <silent> gt :Tags<cr>
nnoremap <silent> <leader>f <c-]>
nnoremap <silent> <leader>' <c-t>
nnoremap <silent> <leader>o :TagbarToggle<cr>

" Terminal
nnoremap <silent> <leader>c :tabe <bar> tabm <bar> term<cr>
tnoremap <Esc> <C-\><C-n>
tnoremap <silent> <leader><space> <C-\><C-n><C-w><C-w>

" Git
nnoremap <silent> <leader>b :Gbrowse<cr>

" vnoremap <Leader>y "+y
" vnoremap <Leader>d "+d
" nnoremap <Leader>y "+y`]
" nnoremap <Leader>p "+p`]
" nnoremap <Leader>P "+P
" vnoremap <Leader>p "+p`]
" vnoremap <Leader>P "+P

onoremap iu :<c-u>normal! `[v`]<cr>
vnoremap iu :<c-u>normal! `[v`]<cr>

onoremap i0 i)
vnoremap i0 i)

" nmap <C-y> :call g:AddFile()<CR>
" nmap <C-y> :call g:AddParentDir()<CR>
map <C-y> :let g:SMARTAUTOCOMPLETE_URI='http://localhost:808

nnoremap ge :Xbit<cr>

nnoremap <silent> <leader>E :ToggleExtraWidth<cr>

" multi search on alt 8
nmap 8 :exe "Search ".expand("<cword>")<cr>

map <silent> [w <Plug>CamelCaseMotion_w
map <silent> [b <Plug>CamelCaseMotion_b
map <silent> [e <Plug>CamelCaseMotion_e

omap <silent> i[w <Plug>CamelCaseMotion_iw
xmap <silent> i[w <Plug>CamelCaseMotion_iw
omap <silent> i[b <Plug>CamelCaseMotion_ib
xmap <silent> i[b <Plug>CamelCaseMotion_ib
omap <silent> i[e <Plug>CamelCaseMotion_ie
xmap <silent> i[e <Plug>CamelCaseMotion_ie

"map <alt>, and <alt>. to jump up and down the tag list
map <esc>, :tp<CR>
map <esc>. :tn<CR>

"map <hift><alt>. and <shift><alt>, to jump up and down the error/grep list
map <esc>< :cp<CR>
map <esc>> :cn<CR>
map <esc>V :cc<cr>
map <esc>L :cw<cr>

" shifted function keys
map <esc>[23~ <s-f1>
map <esc>[24~ <s-f2>
map <esc>[25~ <s-f3>
map <esc>[26~ <s-f4>
map <esc>[28~ <s-f5>
map <esc>[29~ <s-f6>
map <esc>[31~ <s-f7>
map <esc>[32~ <s-f8>
map <esc>[33~ <s-f9>
map <esc>[34~ <s-f10>
map <esc>[23$ <s-f11>
map <esc>[24$ <s-f12>
