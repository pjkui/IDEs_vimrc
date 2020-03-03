# IdeaVim Configuration

本仓库初衷为通过一个简单的Shell脚本快速配置各种IDE的vim插件：
* VSVim+Resharper键位配置
* IdeaVim键位配置

## 目的
让不同的IDE拥有相同的按键配置，从而实现快速开发的目的

## 使用

#### 手工添加

建立一个硬链接，直接让IDEA读取其配置。

```shell
ln VimProjects/ideavimrc/local.vimrc ~/.ideavimrc
```

#### vsvimrc自动添加

注意visual studio需要安装vsvim插件

```bat
install_vsvimrc.bat
```

#### ideavimrc自动添加

注意配置中有导向到第三方插件，如AceJump-Lite、GitFlow

```shell
./build-ideavimrc.sh
```

#### idea properties自动添加

该策略主要是防止idea升级时覆盖自定义的配置路径，或者是多主机使用时配合同步盘达到配置文件同步的功能。

```sh
./build-idea-properties.sh
```

## 键位设置

在不与Surfingkeys的大部分默认键位冲突下，有如下规则：

1. 尽量选用与原快捷键的意义相近的关键字键位
2. 在关键字无法避让的情况下采用**就近原则**或**大写策略**

如果键位不幸与默认键位冲突，优先满足默认键位，将冲突键位放置于特殊字符处，如`;`。

## TODO:

- [ ]  按键配置
- [ ] 快速入门
