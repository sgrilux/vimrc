My vimrc settings
-----------------

# Description

TODO: Add a description and more comments

# Installation

## Plugin used

* [Pathogen](https://github.com/tpope/vim-pathogen) - For plugin manager
* [gundo](http://github.com/sjl/gundo.vim) - Plugin for undo tree
* [NERDTree](https://github.com/scrooloose/nerdtree) - Filesystem explorer plugi

```bash
$ mkdir -p ~/.vim/{autoload,bundle}
$ mkdir ~/.myvimrc
$ git clone https://github.com/sgrilux/vimrc.git ~/.myvimrc
$ curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
$ git clone http://github.com/sjl/gundo.vim.git ~/.vim/bundle/gundo
$ git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
$ sudo -H pip install flake8
$ git clone https://github.com/nvie/vim-flake8.git ~/.vim/bundle/vim-flake8
$ git clone git://github.com/nathanaelkane/vim-indent-guides.git ~/.vim/bundle/vim-indent-guides
$ ln -s ~/.myvimrc/basic.vim ~/.vim/basic.vim
$ echo "source ~/.vim/basic.vim" >> ~/.vimrc
```

# TODOs
* Python
* Add indentation guides

# References
- [Dougblack.io](https://dougblack.io/words/a-good-vimrc.html)
- [VIM tips](http://vim.wikia.com/wiki/Vim_Tips_Wiki)

