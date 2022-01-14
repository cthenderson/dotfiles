syntax enable
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set laststatus=2
set statusline=%-50.f%=(%l,%c)
nnoremap    <silent>    <F4>    :! . ./send_file_to_docker_container.sh %<CR> 
nnoremap                di      :! clear; ls -lsth
map                     ,t      :tabnew
nmap        <silent>    ,'      :noh<CR>
nmap        <silent>    ,j      :wincmd j<CR>
nmap        <silent>    ,k      :wincmd k<CR>
nmap        <silent>    ,h      :wincmd h<CR>
nmap        <silent>    ,l      :wincmd l<CR>

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

nmap <silent> <S-Tab>    :tabn<CR>
nmap <silent> <S-Left>   :tabp<CR>
nmap <silent> <S-Right>  :tabn<CR>

" Copy to system clipboard
nmap <silent> yy :yank *<CR>
nmap <silent> dd :delete *<CR>
vmap <silent> y :yank *<CR>
vmap <silent> d :delete *<CR>

imap jj <Esc>

set smartindent
set foldmethod=indent
set foldnestmax=10
set foldlevel=1

" Hybrid Line Numbers
set number

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

"augroup END
