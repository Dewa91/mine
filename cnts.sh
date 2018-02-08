echo "======== Auto install xmr-stak-cpu for Centos ========="
echo ""
echo "Installing ..."

sleep 2
clear
#update repositori
yum install -y epel-release

#install package yang dibutuhkan
yum -y install centos-release-scl cmake3 hwloc-devel libmicro httpd-devel openssl-devel git screen nano && yum -y install devtoolset-4-gcc* && scl enable devtoolset-4 bash

#setup xmr-stak-cpu mining
git clone https://github.com/fireice-uk/xmr-stak-cpu.git
cd xmr-stak-cpu
cmake3 .
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