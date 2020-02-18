# Remove what was there before
echo "Removing current configuration..."
rm -rf ~/.vim

echo "Installing..."

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# racket
git clone https://github.com/wlangstroth/vim-racket.git ~/.vim/bundle/vim-racket

# rust
git clone --depth=1 https://github.com/rust-lang/rust.vim.git ~/.vim/bundle/rust.vim

# Surround
git clone https://github.com/tpope/vim-surround ~/.vim/bundle/vim-surround

# Solarized theme
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized

# fuGITive
git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive

# .vimrc
cp .vimrc ~/.vimrc
