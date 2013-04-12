syn on                      "语法支持

"common conf {{             通用配置
set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set cursorline              "为光标所在行加下划线
set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入

set ignorecase              "检索时忽略大小写
set fileencodings=uft-8,gbk "使用utf-8或gbk打开文件
set helplang=cn             "帮助系统设置为中文
"set nohlsearch

"}}

" conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
" let NERDTreeWinPos=1
nnoremap <C-t> :NERDTreeToggle<CR>

"conf for plugins {{ 插件相关的配置

"pathogen是Vim用来管理插件的插件
"pathogen{
call pathogen#infect()
"}

"taglist{
let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'  "设置ctags命令的位置
nnoremap <C-r> : Tlist<CR>        "设置关闭和打开taglist窗口的快捷键
"}

"A是一个用来快速切换头文件和源文件的插件
"A{
nnoremap <silent> <F12> :A<CR>
"}

"cscope
"{
set cscopequickfix=s-,c-,d-,i-,t-,e-
nnoremap <silent> <F9> :cw<CR>
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"}

"}}
