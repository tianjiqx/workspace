# workspace
some configure  for work

configure list:

1. .vimrc  
2. .vimrc-8  vim8 版本


快速构建vim 环境

- 将.vimrc 文件 放置到 ~/目录下
- 安装vim.plugin: `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
- 用打开一个文本, 例如 vim ~/.vimrc ，执行`:PlugInstall`  安装插件


注意：环境配置拷贝剪贴板，快捷键进行`, + f` 进行复制，需要安装带有剪贴板的vim

macos 可以brew install vim 安装一个新的vim，配置使用该版本的vim。

一些其他语言，go，cpp，rust等插件，按照[notes/tools-tutorial](https://github.com/tianjiqx/notes/tree/master/tools-tutorial) 已经插件的官方文档中进行安装，或者删除不必要的插件。













