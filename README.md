# dotfiles setup

## Update Packages

First, ensure all packages are up to date.

```bash
sudo pacman -Syu
```

## Install more packages, if needed

```bash
sudo pacman -S yay waybar hyprland hypridle hyprlock swaync zsh starship stow ghostty eza fastfetch fd jq zoxide zsh-autosuggestions zsh-syntax-highlighting yazi github-cli git ttf-jetbrains-mono-nerd polkit-gnome rustup --needed --noconfirm
```

i**optional**

```bash
sudo pacman -S discord bitwarden obsidian --needed --noconfirm
```

## Install Rustup

```bash
rustup default stable
```

## Install awww

awww is swww. The author renamed it and archived swww in October 2025. See their reasons why [here](https://www.lgfae.com/posts/2025-10-29-RenamingSwww.html). Their repo is now on [codeberg](https://codeberg.org/LGFae/awww).

```bash
yay -S awww-git
```

## Clone the dot files

```bash
cd ~
git clone --depth 1 --branch main https://github.com/leonlonsdale/dots.git
cd dots
stow .
```

## Change Shell

```bash
chsh -s "$(which zsh)"
```

Enter your password.

```bash
exec zsh -l
```

_You may get an error about brew. No problem_

## Install brew

See [homebrew](https://brew.sh) to ensure you use the most up to date install curl. When completed, it may ask you to run some commands to ensure it's in your path, and to install some packages.

## Wallpapers

The hyprland config runs a custom bash script (found in ~/user_scripts). This script looks for wallpaper images in `~/wallpaper`.

Please store your wallpapers in this folder.

Alternatively, you can clone my wallpapers:

```bash
cd ~
git clone https://github.com/leonlonsdale/wallpaper.git
```

## Install Helix (optional)

I now use Helix. Why? I got tired of wasting productivity time tweaking my config when the end result is that I have a neovim that does less than Helix does, out of the box.

I like to build from master - it usually includes a lot more useful features than their very slow official releases. When building, I like to do this from `~/build-from-source`.

```bash
mkdir -p ~/build-from-source/ && cd ~/build-from-source
git clone https://github.com/helix-editor/helix
cd helix
cargo install --path helix-term --locked
```

Now we want to symlink the runtime. I use `stow` to manage dotfiles, in case you are wondering what's going on with this symlink.

```bash
rm -rf ~/dots/.config/helix/runtime && ln -s "$PWD/runtime" ~/dots/.config/helix/runtime
cd ~/dots && stow .
```

## Install dev tools

Helix uses LSPs etc, out of the box. You don't need a plugin like Mason to manage them, but you do need to install them. Since Homebrew is often more up to date than most other package managers, it's a very simply and quick way to grab them

```bash
brew install typescript biome pgformatter prettier sql-language-server tailwindcss-language-server typescript-language-server vscode-langservers-extracted oven-sh/bun/bun node go goimports golangci-lint golangci-lint-langserver gopls python uv basedpyright ruff marksman stylua yaml-language-server
npm i -g @olrtg/emmet-language-server
```
