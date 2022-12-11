# 如何配置Neovim

配置Neovim有两种方式: VimScript 和 LuaScript。这里介绍的是 LuaScript 配置方式。

## Neovim 的配置包括：

- nvim 内置options
  - nvim的配置都通过`vim`这个全局模块进行访问和设置
  - options 可以通过 `vim.opt.option_name = value`的方式来设置
    - option_name 一共有351种
    - `:help option-list` 查看所有的options
    - 每个scope都有scope, scope分为三种: global, window, buffer(file)
- 内置命令的key-mappings
  - mapleader
- 插件管理器(packer)的使用
  - 安装packer
  - 安装其他 plugins
- 插件的配置
  - 插件命令的 KeyMapping
  - fzf-finder 插件
- Treesitter 和语法高亮
  - Treesitter 和主题插件配合实现语法高亮
  - 不同编程语言的配置
- LSP与代码补全和重构
  - Rust语言的server安装与配置

## 基本配置步骤

- 创建 `init.lua` 入口配置文件，在 `~/.config/nvim/` 目录下。


