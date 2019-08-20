git submodule init && git submodule update
cd ~
ln -s .dotfiles/.vim
ln -s .dotfiles/.vimrc
ln -s .dotfiles/.screenrc
ln -s .dotfiles/.hgrc

# for git bash (win32)
ln -s .dotfiles/.minttyrc

mkdir .fonts
wget -nc https://github.com/powerline/fonts/blob/master/Inconsolata/Inconsolata%20Bold%20for%20Powerline.ttf?raw=true -O ~/.fonts/Inconsolata\ Bold\ for\ Powerline.ttf
wget -nc https://github.com/powerline/fonts/blob/master/Inconsolata/Inconsolata%20for%20Powerline.otf?raw=true -O ~/.fonts/Inconsolata\ for\ Powerline.otf

fc-cache -f -v

# Writes default profile
gnome_profile=$(dconf list /org/gnome/terminal/legacy/profiles:/)
echo $gnome_profile
dconf write /org/gnome/terminal/legacy/profiles:/${gnome_profile}font "'Inconsolata for Powerline Medium 12'"
