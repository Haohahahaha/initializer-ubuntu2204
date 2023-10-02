#! /bin/sh

# install Sogou Chinese Input Method 

# update apt list
sudo apt update

# install fcitx
sudo apt install fcitx -y

# prompt info
echo "You should setting your Language in \"Language Support\""

while true; do
    read -p "When you have set, Please repeat [Yy] to continue." yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

# Set fcitx to start automatically at boot
sudo cp /usr/share/applications/fcitx.desktop /etc/xdg/autostart/

# Uninstall the system ibus input method framework
sudo apt purge -y ibus

# get resources from web
wget https://ime-sec.gtimg.com/202310021842/da09c400c5942aca1318850a575875cb/pc/dl/gzindex/1680521603/sogoupinyin_4.2.1.145_amd64.deb
sudo dpkg -i sogoupinyin_4.2.1.145_amd64.deb

# Install input method dependencies
sudo apt install -y libqt5qml5 libqt5quick5 libqt5quickwidgets5 qml-module-qtquick2
sudo apt install -y libgsettings-qt1
# sudo apt --fix-broken install
echo "GTK_IM_MODULE=fcitx" >> /etc/environment
echo "QT_IM_MODULE=fcitx" >> /etc/environment
echo "XMODIFIERS=@im=fcitx" >> /etc/environment

# Restart the computer
sudo reboot
