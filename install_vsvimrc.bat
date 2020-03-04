REM 安装vsvim的配置文件vimrc到用户当前目录下。vs需要安装vsvim这个插件
copy /b vs\_vsvimrc "%userprofile%\_vsvimrc"
REM mklink /h  "%userprofile%\_vsvimrc" vs\_vsvimrc