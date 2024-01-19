#!/bin/bash

#remove unnecessary files and folders
if [  -d "/CONTROL" ]; then
rm -r  /CONTROL >/dev/null 2>&1
fi
rm -rf /control >/dev/null 2>&1
rm -rf /postinst >/dev/null 2>&1
rm -rf /preinst >/dev/null 2>&1
rm -rf /prerm >/dev/null 2>&1
rm -rf /postrm >/dev/null 2>&1
rm -rf /tmp/*.ipk >/dev/null 2>&1
rm -rf /tmp/*.tar.gz >/dev/null 2>&1
rm -rf /usr/share/enigma2/emu >/dev/null 2>&1
rm -rf /usr/share/enigma2/piconCrypt >/dev/null 2>&1
rm -rf /usr/share/enigma2/piconProv >/dev/null 2>&1
rm -rf /usr/share/enigma2/piconSat >/dev/null 2>&1


#config
plugin=picons
version=ipaudiopro
url=https://raw.githubusercontent.com/Ham-ahmed/Secript-Panel/main/picons-ipaudio_MNasr.tar.gz
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