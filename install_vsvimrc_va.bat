echo off
GOTO comment
把VA相关的快捷的安装到vs的配置目录
:comment

chcp 65001

REM 安装vsvim的配置文件vimrc到用户当前目录下。vs需要安装vsvim这个插件
echo "把用户目录下的vsvimrc复制回来"
copy /b  "%userprofile%\_vsvimrc" vs\_vsvimrc_va
REM mklink /h  "%userprofile%\_vsvimrc" vs\_vsvimrc
pause