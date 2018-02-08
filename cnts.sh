echo "======== Auto install xmr-stak-cpu for Centos ========="
echo ""
echo "Installing ..."

sleep 2
clear
#update repositori
yum install -y epel-release

#install package yang dibutuhkan
yum -y install centos-release-scl cmake3 hwloc-devel libmicro httpd-devel openssl-devel git screen nano devtoolset-4-gcc*  
sleep 1
sudo scl enable devtoolset-4 bash
echo "lanjut..."
sleep 1
