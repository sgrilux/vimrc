My vimrc settings
-----------------

# Description

TODO: Add a description and more comments

# Installation

## Dependencies

* [Pathogen](https://github.com/tpope/vim-pathogen) - For plugin manager
* [gundo](http://github.com/sjl/gundo.vim) - Plugin for undo tree

```bash
$ mkdir -p ~/.vim/{autoload,bundle}
$ mkdir ~/.myvimrc
$ git clone https://github.com/sgrilux/vimrc.git ~/.myvimrc
$ curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
$ git clone http://github.com/sjl/gundo.vim.git ~/.vim/bundle/gundo
$ ln -s ~/.myvimrc/basic.vim ~/.vim/basic.vim
$ echo "source ~/.vim/basic.vim" >> ~/.vimrc
```

# TODOs
* Add NerdTree [https://github.com/scrooloose/nerdtree]
* Python
* Add indentation guides

# References
[Dougblack.io](https://dougblack.io/words/a-good-vimrc.html)
[VIM tips](http://vim.wikia.com/wiki/Vim_Tips_Wiki)

