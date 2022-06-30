#!/bin/bash

# taken from : https://github.com/JohnHammond/ignition_key/blob/master/ignition_key.sh

# Define colors...
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){
	echo -e "\n${RED}${1}${NC}"
}
function GREEN(){
	echo -e "\n${GREEN}${1}${NC}"
}
function YELLOW(){
	echo -e "\n${YELLOW}${1}${NC}"
}
function BLUE(){
	echo -e "\n${BLUE}${1}${NC}"
}

# Testing if root...
if [ $UID -ne 0 ]
then
	RED "You must run this script as root!" && echo
	exit
fi



BLUE "Updating repositories..."
sudo apt update

BLUE "Installing dirsearch..."
sudo apt install -y dirsearch

BLUE "Installing gobuster"
sudo apt install -y gobuster

BLUE "Installing rlwrap..."
sudo apt install -y rlwrap

BLUE "Installing seclists..."
sudo apt install -y seclists

BLUE "Installing kolourpaint..."
sudo apt install -y kolourpaint
