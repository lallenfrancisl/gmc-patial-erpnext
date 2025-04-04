#!/bin/bash

wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux-x86_64.appimage
sudo chmod +x nvim-linux-x86_64.appimage
./nvim-linux-x86_64.appimage --appimage-extract

sudo mv ./squashfs-root /usr/bin
sudo ln -s /usr/bin/squashfs-root/usr/bin/nvim /usr/bin/nvim 
rm -rf ./nvim-linux-x86_64.appimage
rm -rf ./squashfs-root

