#!/bin/bash
rm ~/.vimrc ; rm -rf ~/.vim
# mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp vimrcPRE ~/.vimrc
vim +PlugInstall +PlugUpgrade +PlugUpdate +qa!
cp vimrc ~/.vimrc
cp jsbeautifyrc ~/.jsbeautifyrc

# cd ~/.vim/bundle && git clone git://github.com/altercation/vim-colors-solarized.git
# # cd ~/.vim/bundle && git clone https://github.com/sickill/vim-monokai.git
# cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdtree.git
# cd ~/.vim/bundle && git clone git://github.com/tpope/vim-rails.git && git clone git://github.com/tpope/vim-bundler.git
# cd ~/.vim/bundle && git clone https://github.com/kien/ctrlp.vim.git
# cd ~/.vim/bundle && git clone git://github.com/tpope/vim-endwise.git
# cd ~/.vim/bundle && git clone git://github.com/tpope/vim-commentary.git
# cd ~/.vim/bundle && git clone https://github.com/vim-ruby/vim-ruby.git
# cd ~/.vim/bundle && git clone https://github.com/ervandew/supertab.git              
# cd ~/.vim/bundle && git clone https://github.com/gregsexton/MatchTag.git
# cd ~/.vim/bundle && git clone git://github.com/tpope/vim-fugitive.git && vim -u NONE -c "helptags vim-fugitive/doc" -c q
# cd ~/.vim/bundle && git clone https://github.com/scrooloose/syntastic.git
# cd ~/.vim/bundle && git clone https://github.com/bling/vim-airline
# cd ~/.vim/bundle && git clone https://github.com/tomtom/tlib_vim.git
# cd ~/.vim/bundle && git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
# cd ~/.vim/bundle && git clone https://github.com/garbas/vim-snipmate.git
# cd ~/.vim/bundle && git clone https://github.com/honza/vim-snippets.git
# cd ~/.vim/bundle && git clone https://github.com/elzr/vim-json.git
# cd ~/.vim/bundle && git clone https://github.com/sjl/gundo.vim
# cd ~/.vim/bundle && git clone https://github.com/leafgarland/typescript-vim.git
# cd ~/.vim/bundle && git clone https://github.com/HerringtonDarkholme/yats.vim.git
# cd ~/.vim/bundle && git clone https://github.com/Quramy/tsuquyomi.git
# cd ~/.vim/bundle && git clone https://github.com/Shougo/vimproc.vim.git 
# cd ~/.vim/bundle && git clone https://github.com/ngmy/vim-rubocop.git 
# cd ~/.vim/bundle && git clone https://github.com/Chiel92/vim-autoformat.git
# cd ~/.vim/bundle && git clone https://github.com/alvan/vim-closetag.git
# cd ~/.vim/bundle && git clone https://github.com/jiangmiao/auto-pairs.git
# cd ~/.vim/bundle/vimproc.vim && make

