# Remove what was there before
echo "Removing current configuration..."
rm -rf ~/.vim

echo "Installing..."

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# vimrc
ln -sf $(pwd)/vimrc ~/.vimrc
ln -sf $(pwd)/coc-settings.json ~/.vim/coc-settings.json
