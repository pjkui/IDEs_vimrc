REM 安装idealvim的配置文件vimrc到用户当前目录下。ideal IDE需要安装idealvim这个插件
echo "把用户现在用的vimrc同步到当前目录"
copy /b "%userprofile%\.ideavimrc" idea\idea.vimrc 
REM mklink /h idea\idea.vimrc "%userprofile%\.ideavimrc"