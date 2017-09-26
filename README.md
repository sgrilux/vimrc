My vimrc settings
-----------------

===Installation====

$ mkdir -p ~/.vim/{autoload,bundle}
$ mkdir ~/.myvimrc
$ git clone https://github.com/sgrilux/vimrc.git ~/.myvimrc
$ curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
$ git clone http://github.com/sjl/gundo.vim.git ~/.vim/bundle/gundo
$ ln -s ~/.myvimrc/basic.vim ~/.vim/basic.vim
$ echo "source ~/.vim/basic.vim" >> ~/.vimrc
