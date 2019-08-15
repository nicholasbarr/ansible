#! /usr/bin/env bash

SCRIPT_DL_URL="https://www.archlinux.org/mirrorlist/?country=US";


# get our copy of the mirrorlist.

echo "Downloading a copy of the custom mirrorlist...";
curl -sSL ${SCRIPT_DL_URL} >> mirrorlist.txt;
sed -i -e 's/#Server/Server/g' mirrorlist.txt;
mv mirrorlist.txt /etc/pacman.d/mirrorlist;

# sudo pacman -Syyu --noconfirm;
sudo pacman -S --noconfirm git ansible;


git clone https://github.com/nicholasbarr/ansible.git;