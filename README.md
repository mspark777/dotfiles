# dotfiles

My dotfiles.

## Setup steps

1. pacman -S vi git base-devel
2. visudo
3. yay
4. yay -S adobe-source-han-sans-kr-fonts fcitx5 fcitx5-hangul fcitx5-configtool libhangul ttf-hack-nerd ttf-font-awesome
5. /etc/locale.gen (en_US.UTF8, ko_KR.UTF8), locale-gen
6. reboot
7. change input method Korean (Hangul)
8. yay -S {packages}
9. reboot
10. install .tool-versions
11. install rustup
12. ssh-keygen -t ed25519 -C "topangel777@gmail.com"
13. git clone git@github.com:mspark777/dotfiles.git
14. stow {configs}
15. make tpm
16. nvim
17. yay -S kitty, ghostty
18. enable VGA [Wiki](https://wiki.archlinux.org/title/NVIDIA) if it's not enabled.

### Packages

| Name                                                                            | For               |
| ------------------------------------------------------------------------------- | ----------------- |
| hyprshot                                                                        | hyprland          |
| ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick                  | yazi              |
| pulseaudio pulseaudio-alsa pavucontrol paprefs                                  | audio             |
| lazygit lazydocker tmux less yazi neofetch wl-clipboard asdf-vm starship        | terminal utils    |
| adobe-source-han-sans-kr-fonts fcitx5 fcitx5-hangul fcitx5-configtool libhangul | korean fonts      |
| ttf-hack-nerd ttf-font-awesome                                                  | terminal font     |
| imagemagick                                                                     | image.nvim        |
| lldb                                                                            | nvim-dap          |
| fd                                                                              | snacks.nvim       |
| ripgrep tree-sitter tree-sitter-cli wl-clipboard                                | nvim              |
| openssl zlib xz tk zstd                                                         | python            |
| stow                                                                            | config management |
| docker docker-compose docker-buildx aws-cli-v2 gvim                             | development       |
| unzip                                                                           | asdf lua          |

## Manually Version Control

1. [nvim-surround](https://github.com/kylechui/nvim-surround)

## Bashrc

```sh
if [[ -f ~/.config/mspark777/bashrc ]]
then
    source ~/.config/mspark777/bashrc
fi
```

## LSP name

https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

## Update

1. yay -Syu
2. asdf plugin update --all
3. tmux prefix + U
4. rustup update
5. make clean_nvim_plugins
