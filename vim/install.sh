#!/bin/zsh

# Remove what was there before
echo "Removing current configuration..."
rm -rf ~/.vim

echo "Installing vim-plug..."
# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# vimrc
ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/coc-settings.json ~/.vim/coc-settings.json
ln -sf $(pwd)/coc-settings.json ~/.config/nvim/coc-settings.json

# for neovim
mkdir -p ~/.config/nvim
cat <<EOF > ~/.config/nvim/init.vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
EOF
