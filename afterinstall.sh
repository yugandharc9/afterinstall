sudo apt update
git clone https://github.com/aruhier/gnome-terminal-colors-solarized.git
cd gnome-terminal-colors-solarized && ./install.sh
cd ~
sudo apt-get install build-essential
sudo apt install git
sudo apt purge copyq
sudo apt install tmux
sudo apt install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
sudo apt-get install build-essential git wget libssl-dev libreadline-dev libncurses5-dev zlib1g-dev m4 curl wx-common libwxgtk3.0-dev autoconf
sudo apt-get install libxml2-utils xsltproc fop unixodbc unixodbc-bin unixodbc-dev
asdf plugin-add erlang
asdf plugin-add elixir
asdf install erlang 22.0.7
asdf install elixir 1.9.1-otp-22
asdf global erlang 22.0.7
asdf global elixir 1.9.1-otp-22
asdf install nodejs 12.18.3
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
npm install -g ionic@3.20.0
npm install -g cordova

