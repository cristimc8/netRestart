#!/bin/bash

# Script to automate wlan0 restart
echo -e "\e[31;43m***** RESTARTING NETWORK MANAGER *****\e[0m"
sudo service NetworkManager restart
echo ""
echo -e "\e[31;43m***** STARTING WLAN0 *****\e[0m"
sudo airmon-ng start wlan0
echo ""
echo -e "\e[31;43m***** STOPING WLAN0MON *****\e[0m"
sudo airmon-ng stop wlan0mon
echo ""
echo -e "\e[31;43m***** starting wlan0 *****\e[0m"
sudo ifconfig wlan0 up
echo ""
echo -e "\e[1;32mDone. \e[0m"
