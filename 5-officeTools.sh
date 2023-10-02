#! /bin/sh

# download

# QQ
wget https://dldir1.qq.com/qqfile/qq/QQNT/b69de82d/linuxqq_3.2.1-17153_amd64.deb

# WeChat
wget https://archive.ubuntukylin.com/software/pool/partner/ukylin-wine_70.6.3.25_amd64.deb
wget http://archive.ubuntukylin.com/software/pool/partner/ukylin-wechat_3.0.0_amd64.deb

# Netease Cloud Music
wget http://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb

# Bilibili-linux
wget https://github.com/msojocs/bilibili-linux/releases/download/v1.12.1-2/io.github.msojocs.bilibili_1.12.1-2_amd64.deb

# Tencent Document
wget https://down.qq.com/qqweb/linux_docs/LinuxTencentDocsAmd64.deb

# Tencent Meeting
wget https://updatecdn.meeting.qq.com/cos/a05d53f96ab7331d2b2d245981f055d0/TencentMeeting_0300000000_3.15.1.401_x86_64_default.publish.deb

# Feishu
wget https://sf3-cn.feishucdn.com/obj/ee-appcenter/fe01b99b/Feishu-linux_x64-6.9.16.deb

# WPS
wget https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/11698/wps-office_11.1.0.11698.XA_amd64.deb

# Xmind 2020
wget https://dl2.xmind.cn/XMind-2020-for-Linux-amd-64bit-10.3.1-202101132117.deb

# BaiduNetdisk
wget https://issuepcdn.baidupcs.com/issue/netdisk/LinuxGuanjia/4.17.7/baidunetdisk_4.17.7_amd64.deb

# install

# QQ
sudo dpkg -i linuxqq_3.2.1-17153_amd64.deb

# WeChat
sudo apt install -y libxdo3 xdotool
sudo dpkg -i ukylin-wine_70.6.3.25_amd64.deb
sudo dpkg -i ukylin-wechat_3.0.0_amd64.deb

# Netease Cloud Music
sudo dpkg -i netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb
sudo cp /lib/x86_64-linux-gnu/libselinux.so.1 /opt/netease/netease-cloud-music/libs/
sudo cp /lib/x86_64-linux-gnu/libgmodule-2.0.so.0 /opt/netease/netease-cloud-music/libs/
sudo cp /lib/x86_64-linux-gnu/libpango-1.0.so.0 /opt/netease/netease-cloud-music/libs/
sudo cp /lib/x86_64-linux-gnu/libfribidi.so.0 /opt/netease/netease-cloud-music/libs/
sudo apt-get install libcanberra-gtk-module


# Bilibili-linux
sudo dpkg -i io.github.msojocs.bilibili_1.12.1-2_amd64.deb

# Tencent Document
sudo dpkg -i LinuxTencentDocsAmd64.deb

# Tencent Meeting
sudo dpkg -i TencentMeeting_0300000000_3.15.1.401_x86_64_default.publish.deb

# Feishu
sudo dpkg -i Feishu-linux_x64-6.9.16.deb

# WPS
sudo dpkg -i wps-office_11.1.0.11704.XA_amd64.deb
git clone https://github.com/iamdh4/ttf-wps-fonts.git
sudo bash ./ttf-wps-fonts/install.sh
rm -rf ./ttf-wps-fonts

# Xmind 2020
sudo dpkg -i XMind-2020-for-Linux-amd-64bit-10.3.1-202101132117.deb

# BaiduNetdisk
sudo dpkg -i baidunetdisk_4.17.7_amd64.deb

