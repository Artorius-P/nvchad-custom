# nvchad-custom
My nvchad custom config

## Usage
first cp the file
```
cp -r custom ~/.config/nvim/lua/
```
then run `:PackerSync` and `:MasonInstallAll` 

## 设置formatter
使用前需要先在plugins/null-ls里配置对应的formatter
https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

## 设置lsp
在plugins/mason.lua里配置对应的language-server然后使用`:MasonInstallAll`来安装
接着在这里找到对应的server
https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
在plugins/lspconfig.lua中配置对应的server
