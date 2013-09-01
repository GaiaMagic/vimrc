cd ~/.vim && git pull origin master
cd ~/.vim/bundle/vundle && git pull origin master

ln -nfs ~/.vim/vimrc ~/.vimrc
vim +BundleInstall +qall

echo 'Done!'
