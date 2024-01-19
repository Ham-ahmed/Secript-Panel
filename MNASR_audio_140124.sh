#!/bin/bash


#config
plugin=ipaudio
version=pro
url=https://raw.githubusercontent.com/Ham-ahmed/Secript-Panel/main/MNASR_audio_140124.tar.gz
package=/var/volatile/tmp/$plugin-$version.tar.gz

#download & install
echo "> Downloading $plugin-$version package  please wait ..."
sleep 3s

wget -O $package --no-check-certificate $url
tar -xzf $package -C /
extract=$?
rm -rf $package >/dev/null 2>&1

echo ''
if [ $extract -eq 0 ]; then
echo "> $plugin-$version package installed successfully"
echo "> By H-Ahmed"
sleep 3s

else

echo "> $plugin-$version package installation failed"
sleep 3s
fi

exit 0