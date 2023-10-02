#! /bin/sh

sudo mkdir -p /usr/share/fonts/winFonts
sudo cp ../resources/fonts/*.ttf /usr/share/fonts/winFonts/
sudo chmod 644 /usr/share/fonts/winFonts/*.ttf

cd /usr/share/fonts/winFonts/
sudo mkfontscale 
sudo mkfontdir 
sudo fc-cache -fv

sudo cp /etc/fonts/conf.d/64-language-selector-prefer.conf /etc/fonts/conf.d/64-language-selector-prefer.conf.bak
sudo chmod 777 /etc/fonts/conf.d/64-language-selector-prefer.conf
echo "<?xml version="1.0"?>\n<\!DOCTYPE fontconfig SYSTEM "fonts.dtd">\n<fontconfig>\n\t<alias>\n\t\t<family>PingFang SC</family>\n\t\t<prefer>\n\t\t\t<family>PingFang SC Bold</family>\n\t\t\t<family>PingFang SC ExtraLight</family>\n\t\t\t<family>PingFang SC Heavy</family>\n\t\t\t<family>PingFang SC Light</family>\n\t\t\t<family>PingFang SC Medium</family>\n\t\t\t<family>PingFang SC Regular</family>\n\t\t</prefer>\n\t</alias>\n</fontconfig>" > /etc/fonts/conf.d/64-language-selector-prefer.conf
sudo chmod 644 /etc/fonts/conf.d/64-language-selector-prefer.conf

sudo reboot
