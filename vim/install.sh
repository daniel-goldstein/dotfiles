# Remove what was there before
echo "Removing current configuration..."
rm -rf ~/.vim

echo "Installing..."

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Bundles ---------------------------------------------------------------------
cd ~/.vim/bundle

# Languages
# racket
git clone https://github.com/wlangstroth/vim-racket.git
# rust
git clone --depth=1 https://github.com/rust-lang/rust.vim.git

# Plugins
# Solarized theme
git clone git://github.com/altercation/vim-colors-solarized.git
# fuGITive
git clone https://github.com/tpope/vim-fugitive
# supertab
git clone https://github.com/ervandew/supertab
# commentary
git clone https://github.com/tpope/vim-commentary
# ale (linting)
git clone https://github.com/dense-analysis/ale.git
# nerdtree
git clone https://github.com/preservim/nerdtree.git
cd -

# Vimrc ----------------------------------------------------------------------
ln -sf $(pwd)/vimrc ~/.vimrc
