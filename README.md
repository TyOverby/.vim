.vim
====

*A basic (but feature full) vim configuration.*


Ever tried out vim only to find that the default settings were lame and it is dificult to configure?
Well fear no longer.  With two lines into your command prompt, you'll have a decent vim configuration 
that doesn't look half bad either.


# Setup
In your favorite shell, run the following

    cd ~
    mv .vim .vim.bak 2> /dev/null
    mv .vimrc .vimrc.bak 2> /dev/null
    git clone --recursive https://github.com/TyOverby/.vim.git
    bash ./.vim/setup.sh
    
The 2nd and 3rd lines back up your existing vim configuration if you have one.  If these commands fail, don't worry about it.

# Screenshot

![Vim](http://i.imgur.com/ljVQS89.png?1)

# Features

* A slew of configuration changes that make life easier
* A modern color scheme
* Vundle: A vim plugin manager with the following plugins
  * luscius: The colorscheme
  * mini buffer explorer: A tab-like experience for buffers
  * syntastic: In-editor errors and warnings for most programming languages
  * align: Easily align lines of text on an identifier 

# Troubleshooting

_Whaaaa!  Why doesn't my vim have really nice colors like the screenshot?_

That's probably because your terminal emulator isn't in the correct color mode.  
Try setting the color mode in your terminal to xterm-256color.  If you can't find a setting in your 
terminal emulator try running the command `TERM=xterm-256color` in bash.  Then try running vim.
If that works, put `TERM=xterm-256color` in your .bashrc file.
