# dotfiles

My dotfiles.

## Install

1. pacman -Sy vi git base-devel
2. visudo
3. yay
4. yay -Sy adobe-source-han-sans-kr-fonts ibus ibus-hangul libhangul ttf-hack-nerd
5. /etc/locale.gen (ko_KR.UTF8), locale-gen
6. reboot
7. change input method Korean (Hangul)
8. yay -Sy zen-browser-bin
9. yay -Sy asdf-vm openssl zlib xz tk zstd fzf tmux lazygit xclip neovim gvim ripgrep imagemagick asdf-vm jq starship less yazi stow docker docker-compose docker-buildx
10. install .tool-versions
11. install rustup
12. ssh-keygen -t ed25519 -C "topangel777@gmail.com"
13. git clone git@github.com:mspark777/vim.git ~/.config/nvim
14. cp {Configs}
15. make tpm
16. nvim
17. gnome extenstion manager, tophat
18. yay -Sy kitty

| Name                                                      | For               |
| --------------------------------------------------------- | ----------------- |
| fzf, lazygit, tmux, jq, less, yazi                        | Terminal utils    |
| adobe-source-han-sans-kr-fonts ibus ibus-hangul libhangul | Korean fonts      |
| ttf-hack-nerd                                             | Terminal font     |
| imagemagick                                               | image.nvim        |
| lldb                                                      | nvim-dap          |
| fd                                                        | Snacks.nvim       |
| xclip, ripgrep, tree-sitter, tree-sitter-cli              | nvim              |
| openssl zlib xz tk zstd                                   | python            |
| musl                                                      | rust-musl         |
| stow                                                      | config management |
| docker, docker-compose, docker-buildx, aws-cli-v2                        | development       |

### Manually Version Control

1. [nvim-surround](https://github.com/kylechui/nvim-surround)

### Bashrc

```sh
if [[ -f ~/.mspark777.sh ]]
then
    source ~/.mspark777.sh
fi
```

## LSP name

https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

## Update

1. yay -Syu
2. asdf plugin update --all
3. tmux prefix + U
4. rustup update
5. make cleanall & nvim

