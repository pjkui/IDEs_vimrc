echo off
GOTO comment
把VA相关的快捷的安装到vs的配置目录
REM 安装vsvim的配置文件vimrc到用户当前目录下。vs需要安装vsvim这个插件
:comment

chcp 65001

echo "把vs/vsvimrc_va复制到用户的目录下%userprofile%\_vsvimrc"
copy /b vs\_vsvimrc_va "%userprofile%\_vsvimrc" 
REM mklink /h  "%userprofile%\_vsvimrc" vs\_vsvimrc
pause