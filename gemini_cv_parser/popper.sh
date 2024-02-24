#!/bin/bash

apt-get update
apt install g++ autoconf libfontconfig1-dev pkg-config libjpeg-dev libopenjpeg-dev gnome-common libglib2.0-dev gtk-doc-tools libyelp-dev yelp-tools gobject-introspection libsecret-1-dev libnautilus-extension-dev
wget https://poppler.freedesktop.org/poppler-data-0.4.7.tar.gz
tar -xf poppler-data-0.4.7.tar.gz
cd poppler-data-0.4.7
sudo make install
wget https://poppler.freedesktop.org/poppler-0.48.0.tar.xz
tar -xf poppler-0.48.0.tar.xz
cd poppler-0.48.0
sudo apt install pkg-config
sudo apt-get install libfontconfig1-dev -y
export PKG_CONFIG_PATH=/path/to/fontconfig/pkgconfig:$PKG_CONFIG_PATH
./configure
make
sudo make install
sudo ln -s /usr/local/bin/pdftotext /usr/bin/pdftotext
sudo ln -s /usr/local/bin/pdftoppm /usr/bin/pdftoppm
sudo ln -s /usr/local/lib/libpoppler.so.64 /usr/lib/libpoppler.so.64