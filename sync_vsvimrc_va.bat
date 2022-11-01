echo off
GOTO comment
把用户目录下的vsvimrc复制回来
:comment

chcp 65001

echo "把用户目录下的vsvimrc复制回来"
copy /b  "%userprofile%\_vsvimrc" vs\_vsvimrc_va
REM mklink /h  "%userprofile%\_vsvimrc" vs\_vsvimrc