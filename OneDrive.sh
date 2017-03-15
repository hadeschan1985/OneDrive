#!/bin/bash

function Install() {
REPATH=$(pwd)
rm -rf /usr/local/etc/OneDrive
mkdir -p /usr/local/etc/OneDrive
cd /usr/local/etc/OneDrive/$TYPE
wget --no-check-certificate -q -O json-parser "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/json-parser"
wget --no-check-certificate -q -O onedrive "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive"
wget --no-check-certificate -q -O onedrive-authorize "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive-authorize"
wget --no-check-certificate -q -O onedrive-base "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive-base"
wget --no-check-certificate -q -O onedrive.cfg "https://raw.githubusercontent.com/0oVicero0/OneDrive/master/Business/onedrive.cfg"
chmod -R +x /usr/local/etc/OneDrive
ln -sf /usr/local/etc/OneDrive/onedrive /usr/local/bin
cd $REPATH
}

Install;

rm -rf $(basename "$0")
