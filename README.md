# vimfiles 
# To be cloned to %HOMEDRIVE%%HOMEPATH%
# https://github.com/prohwer65/vimfiles.git
# 

# Linux
cd

git clone https://github.com/prohwer65/vimfiles.git .vim  
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# Windows

cd %USERPROFILE%

git clone https://github.com/prohwer65/vimfiles.git vimfiles 

cd vimfiles 

copy .gitconfig %USERPROFILE%

copy .gitignore %USERPROFILE%
