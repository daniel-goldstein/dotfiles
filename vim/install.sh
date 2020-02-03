# .vimrc
cp .vimrc ~/.vimrc

# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# vim-racket
cd ~/.vim/bundle
git clone https://github.com/wlangstroth/vim-racket.git
