!#/bin/sh

git clone https://github.com/nwg-piotr/autotiling.git
file=./autotiling/autotiling/main.py
chmod +x $file
sudo mv $file /bin/autotiling
rm -rf ./autotiling


