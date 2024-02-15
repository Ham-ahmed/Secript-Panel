#!/bin/sh

if [ -d /usr/lib/enigma2/python/Plugins/Extensions/EPGTranslator ]; then
echo "> removing package please wait..."
sleep 3s 
rm -r /usr/lib/enigma2/python/Plugins/Extensions/EPGTranslator > /dev/null 2>&1
sed -i '/EPGTranslatorminoo/d' /etc/enigma2/settings > /dev/null 2>&1


status='/var/lib/opkg/status'
package='enigma2-plugin-extensions-EPGTranslator'

if grep -q $package $status; then
opkg remove $package > /dev/null 2>&1
fi

echo "*******************************************"
echo "*             Removed Finished            *"
echo "*           Uploaded in 15-2-2024         *"
echo "*******************************************"
sleep 3s

else

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

#config
plugin=EPGTranslator
version=2.0.3
url=https://raw.githubusercontent.com/Ham-ahmed/Secript-Panel/main/EPGTranslator-plugin.tar.gz
package=/var/volatile/tmp/$plugin-$version.tar.gz

#download & install
echo "> Downloading $plugin-$version package  please wait ..."
sleep 3s

wget -O $package --no-check-certificate $url
tar -xzf $package -C /
extract=$?
rm -rf $package >/dev/null 2>&1

if [ -f /usr/lib/enigma2/python/Components/Converter/ServiceInfo.pyc ]; then
cp -f '/usr/lib/enigma2/python/Components/Converter/ServiceInfo.pyc' '/usr/lib/enigma2/python/Screens'
fi

echo ''
if [ $extract -eq 0 ]; then
echo "> $plugin-$version package installed successfully"
echo "> Uploaded in 15-2-2024"
sleep 3s

else

echo "> $plugin-$version package installation failed"
sleep 3s
fi

fi
exit 0