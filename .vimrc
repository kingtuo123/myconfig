set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
"Plugin 'dracula/vim'
Plugin 'vim-airline'
Plugin 'vim-airline/vim-airline-themes' 
Bundle 'scrooloose/syntastic' 
Plugin 'Yggdroot/indentLine' "缩进插件
"Plugin 'xterm-color-table.vim' "色码表
"Plugin 'mattn/emmet-vim' "html补全插件
"Plugin 'supertab'


call vundle#end()            " required
filetype plugin indent on    " required





au FileType php setlocal dict+=~/.vim/dict/php_funclist.dict
au FileType css setlocal dict+=~/.vim/dict/css.dict
au FileType c setlocal dict+=~/.vim/dict/c.dict
au FileType cpp setlocal dict+=~/.vim/dict/cpp.dict
au FileType scale setlocal dict+=~/.vim/dict/scale.dict
au FileType javascript setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/javascript.dict
au FileType html setlocal dict+=~/.vim/dict/css.dict





"python补全
let g:pydiction_location = '~/.vim/after/complete-dict'
let g:pydiction_menu_height = 20
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1





"html缩进
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"





set t_Co=256
set mouse=a "启用鼠标
set wildmenu "命令行下tab补全
set ruler  "显示标尺
set nu  "显示行号
set hlsearch  "搜索是否高亮显示
set autoindent  "是否自动缩排
set smartindent "智能的选择对起方式
set shiftwidth=4 "将换行自动缩进设置成4个空格
set ruler  "显示右下角状态栏
set showmatch  "高亮显示匹配的括号
set hlsearch  "高亮search命中的文本
set ignorecase  "搜索时忽略大小写
set tabstop=4  "设置Tab键的宽度[等同的空格个数]
set expandtab "用space替代tab的输入
set cursorline  "为光标所在行加下划线
set cursorcolumn "高亮当前列
syntax on  "程序语法高亮
filetype plugin indent on "开启文件类型检测
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o    "取消换行自动添加注释





"以下为indentLine的设置
let g:indentLine_char = '┊'
let g:indentLine_color_term = 239
"let g:indentLine_bgcolor_term = 202
set complete-=k complete+=k





"以下为airline的设置
set laststatus=2
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_theme='minimalist' "airline主题
"let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1   
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '<'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = '>'
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = 'read-only'
let g:airline_symbols.linenr = 'L/N'





"以下为语法检查插件的设置
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_c_compiler = "gcc"
let g:syntastic_c_compiler_options = "-Wall" "gcc参数
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1 
let g:syntastic_error_symbol='ㄨ'
let g:syntastic_warning_symbol='！'
let g:syntastic_enable_highlighting=0  "语法检查显示错误处是否高亮
let g:syntastic_loc_list_height = 5  "报错窗口的高度
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1






"主题颜色
colorscheme    kolor
"colorscheme dracula
"colorscheme solarized
hi PmenuSel ctermbg=240    ctermfg=82  "补全提示框颜色[选中的]
hi Pmenu    ctermbg=248    ctermfg=233  "补全提示框颜色[wei选中的]
hi NonText  ctermbg=none
hi SyntasticErrorSign ctermbg=0 ctermfg=red
hi SyntasticWarningSign ctermbg=0 ctermfg=226
hi CursorLine   cterm=NONE ctermbg=0
hi LineNr   ctermbg=0
hi CursorColumn cterm=NONE ctermbg=0
hi normal   ctermbg=none   ctermfg=254






"键盘映射
set pastetoggle=<F10> "粘贴模式
nmap <F1> gg<s-v><s-g>=  "代码格式整理
nmap <silent> <F2> <Esc>:wa <Esc>:Errors<CR>
autocmd FileType c,cpp,java imap ;; <Esc>$a;
autocmd filetype html,css imap jj <c-y>,
autocmd filetype html,css imap ;; <c-y>,
autocmd filetype html,css imap .. <c-y>,
imap () ()<Left>
imap [] []<Left>
imap {} {}<left>
imap "" ""<Left>
imap '' ''<Left>
imap <> <><Left>
imap LL <right>
imap KK <up>
imap JJ <down>
imap HH <left>
imap {}} {}<cr><cr><up><tab>
imap {}] {}<cr><cr><up><tab>
imap <F3> <c-y>,
nmap <c-n> :noh<CR>i<Esc>  
nmap <F12> ma%x`ax
imap <tab> <c-p>
nmap dq dedb
"imap j <down>
"imap k <up>
"imap h <left>
"imap l <right>
"按下ctrl-v再按快捷键alt-l
"ctrl + m 清除搜索结果





function Add_C_Title()
    call append( 0, "#include<stdio.h>")
    call append( 1, "int main(int argc,char **argv)")
    call append( 2, "{")
    call append( 3, "    return 0;")
    call append( 4, "}")
    echohl WarningMsg | echo "Successful in adding the copyright." | echohl None
endf
command Insertc call Add_C_Title()

function Add_Html_Title()
    call append(0,"<!DOCTYPE html>")
    call append(1,"<html>")
    call append(2,"    <head>")
    call append(3,"        <meta charset=\"utf-8\">")
    call append(4,"        <title></title>")
    call append(5,"        <style></style>")
    call append(6,"    </head>")
    call append(7,"    <body>")
    call append(8,"    </body>")
    call append(9,"</html>")
endf
command InsertHtml call Add_Html_Title()
