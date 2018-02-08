echo "lanjutan..." 
git clone https://github.com/fireice-uk/xmr-stak-cpu.git
cd xmr-stak-cpu
cmake3 -DMICROHTTPD_ENABLE=OFF
make install
cd bin/
rm -rf config.txt
wget https://raw.githubusercontent.com/dewaantara/miner/master/config.txt
chmod +x xmr-stak-cpu
sysctl -w vm.nr_hugepages=128

sleep 1
cd ~/xmr-stak-cpu/bin
screen -dmS mining ./xmr-stak-cpu
echo "script mining telah dijalankan"
echo "untuk menutup ctrl+a+d agar tetap jalan miningnya ^_^"
echo ""
echo "siap grak terima gaji ^_^"
