sudo apt remove mkisofs
sudo apt remove genisoimage

sudo apt install gcc g++ -y
wget -L https://sourceforge.net/projects/schilytools/files/schily-2021-09-18.tar.bz2

tar -xvf schily-2021-09-18.tar.bz2
cd schily-2021-09-18
sudo make
sudo make install

ls -al schily-2021-09-18/mkisofs/OBJ/