#!bin/bash
sudo apt update

#Install VSCode
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code

#Install Thunderbird
sudo apt-get install thunderbird

#Set Desktop Wallpaper
SRC_URI="https://taipricebook.es/wp-content/uploads/2020/09/arrow-qumulo-logo-og-web.jpg"
FNAME="/home/$USER/Pictures/desktop.png"
wget "$SRC_URI" -O "$FNAME"
gsettings set org.gnome.desktop.background picture-uri "$FNAME"

#launch Thunderbird
thunderbird

#launch vscode
code