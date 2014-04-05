.vim
====

*A basic (but feature full) vim configuration.*


Ever tried out vim only to find that the default settings were lame and it is dificult to configure?
Well fear no longer.  With two lines into your command prompt, you'll have a decent vim configuration 
that doesn't look half bad either.


# Setup
In your favorite shell, run the following

    cd ~
    mv .git .git.bak
    mv .gitrc .gitrc.bak
    git clone --recursive https://github.com/TyOverby/.vim.git
    bash ./.git/setup.sh
    
The 2nd and 3rd lines back up your existing vim configuration if you have one.  If these commands fail, don't worry about it.

![Vim](http://i.imgur.com/ljVQS89.png?1)
