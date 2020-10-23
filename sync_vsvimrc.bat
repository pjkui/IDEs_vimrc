REM 安装vsvim的配置文件vimrc到用户当前目录下。vs需要安装vsvim这个插件
echo "把用户目录下的vsvimrc复制回来"
copy /b  "%userprofile%\_vsvimrc" vs\_vsvimrc
REM mklink /h  "%userprofile%\_vsvimrc" vs\_vsvimrc