#! /usr/bin/env bash

sudo pacman -Syyu --noconfirm;
sudo pacman -S --noconfirm git ansible;


git clone https://github.com/nicholasbarr/ansible.git;