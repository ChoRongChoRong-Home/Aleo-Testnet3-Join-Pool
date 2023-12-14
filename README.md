<p align="center">
  <img height="150" height="auto" src="https://user-images.githubusercontent.com/38981255/185994172-0b4e4ea8-f81a-48db-8020-9be619f485b7.png">
</p>

# ALEO PROVER TESTNET INCENTIVIZED (JOIN POOL HARUKA)

##  1. Ikhtisar

__snarkOS__ adalah sistem operasi terdesentralisasi untuk aplikasi pribadi. Ini membentuk tulang punggung [ Aleo ](https://aleo.org/) dan
memungkinkan aplikasi untuk memverifikasi dan menyimpan status dengan cara yang dapat diverifikasi secara publik.

## 2a. Spesifiksi Minimal

Berikut adalah persyaratan **minimum** untuk menjalankan node Aleo (SOLO MODE):

 -  **CPU** : 16-core (lebih disukai 32-core)
 -  **RAM** : Memori 16GB (lebih disukai 32GB)
 -  **Penyimpanan** : 128GB ruang disk
 -  **Jaringan** : 50 Mbps upload **dan** bandwidth download
 
 ## 2b. Untuk menjalankan POOL MODE bisa menggunakan spesifikasi yang lebih rendah lagi
 
 - Yang membedakan hanya dipembagian reward nya aja

# Instal Otomatis

```
wget -O prover.sh https://raw.githubusercontent.com/hallosayael/Aleo-Testnet3-Join-Pool/main/prover.sh && chmod +x prover.sh && ./prover.sh
```

Biarkan Instalisasi Selesai, Agak Lama

# Pool Haruka

```
git clone https://github.com/HarukaMa/aleo-prover -b testnet3-new
cd aleo-prover
```
```
cargo build --release
```
```
screen -R aleopool
```

# Jalankan Mode Pool

```
target/release/aleo-prover -a aleo1your_address_here -p pool.hamp.app:4444
```
- Ganti 'aleo1your_address_here' dengan wallet address aleo kalian yang didapat ketika selesai Install diatas tadi
- `ctrl A D` untuk Menyimpan Screen Agar Jalan di Background Pc Kalian
- Jika anda Ingin Kembali ke Screen Yang Sedang Jalan, Gunakan Perintah `screen -r aleopool`
- Untuk cek rewardnya open : https://hamp.app/ (copy/paste address kalian)

## Thanks to

```
BangPateng
Haruka Pool
Warga DC Aleo
```
