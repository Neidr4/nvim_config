# nvim_config

## Personal nvim config

### Installing neovim from source
Get the latest stable version:

```bash
git clone --depth 1 --branch stable https://github.com/neovim/neovim.git;
cd neovim;
sudo make CMAKE_BUILD_TYPE=Release install;
```

### Installing plug-ins
```bash
git clone https://github.com/neidr4/nvim_config.nvim\ ~/.config/;
cd ~/.config; mv nvim_config nvim;
```

### Installing plug-ins
Setup other stuff:
```bash
sudo apt install fzf ripgrep ps xclip
```

Install Packer:
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Install packages from Packer:
```bash
nvim $HOME/.config/nvim/lua/neidr4/packer.lua
:source
:PackerSync
```
Then you can restart and enjoy nvim ;)
