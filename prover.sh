#!/bin/bash
clear
echo "==================================================================="
echo -e "\e[92m"
echo  "   _______    __        ";
echo  "  |  _____|  |  |       ";
echo  "  | |_____   |  |       ";
echo  "  |  _____|  |  |       ";
echo  "  | |_____   |  |_____  ";
echo  "  |_______|  |________| ";
echo -e "\e[0m"
echo "===================================================================" 

echo -e '\e[36mGarapan :\e[39m' Aleo Prover Testnet -Join POOL-
echo -e '\e[36mAuthor :\e[39m' hallosayael

sleep 2

# 우분투에 설치되어 있는 rustc 를 삭제하고 
sudo apt-get remove rustc

echo -e "\e[1m\e[32m1. Updating packages... \e[0m" && sleep 1
# update
cd $HOME
sudo apt-get update && sudo apt install git && sudo apt install screen

echo -e "\e[1m\e[32m2. Open Port... \e[0m" && sleep 1
ufw allow 22 && ufw allow 4133/tcp && ufw allow 3033/tcp && ufw enable

echo -e "\e[1m\e[32m3. Install Rupstup... \e[0m" && sleep 1
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo -e "\e[1m\e[32m4. Clone Repository... \e[0m" && sleep 1
cd $HOME
git clone https://github.com/AleoHQ/snarkOS.git --depth 1

echo -e "\e[1m\e[32m5. Build... \e[0m" && sleep 1
cd snarkOS
./build_ubuntu.sh

echo -e "\e[1m\e[32m6. Cargo Path Install... \e[0m" && sleep 1
apt install cargo
curl https://sh.rustup.rs -sSf | sh
source "$HOME/.cargo/env"
cargo install cargo --force
cargo install --path .

echo -e "\e[1m\e[32m7. Create Account Aleo Prover... \e[0m" && sleep 1
snarkos account new

echo '=============== SETUP FINISHED BACKUP SEMUA DATA KALIAN, SIMPAN DENGAN AMAN==================='
