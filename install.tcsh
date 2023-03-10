#!/bin/tcsh

# https://moginwc.sakura.ne.jp/FreeBSD124InstallGuide.pdf
# 50〜60ページ、および75〜77ページを自動化するサンプル

sudo pkg install -y vim
sudo pkg install -y xorg
sudo pkg install -y fvwm
sudo pkg install -y ja-font-ipa
sudo pkg install -y mlterm
sudo pkg install -y ja-uim-anthy uim-gtk3 uim-qt5
sudo pkg install -y firefox
sudo pkg install -y scrot
sudo pkg install -y sdump

sudo pkg update -f
sudo pkg upgrade

mkdir ~/.mlterm
cp -r .mlterm ~
cp .cshrc ~
cp .fvwm2rc ~
cp .vimrc ~
cp .xinitrc ~

touch ~/.anthy/private_words_default