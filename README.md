# nvim_config
## Personal nvim config

Install neovim
```bash
sudo apt-get install neovim
```

Install vim plug
```bash
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
or
```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

Neovim: Put the init.vim file inside:
```bash
~/.config/nvim/init.vim
```
