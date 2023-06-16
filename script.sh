sudo apt remove mkisofs
sudo apt remove genisoimage

sudo apt install gcc g++ isohybrid -y
wget -L https://sourceforge.net/projects/schilytools/files/schily-2021-09-18.tar.bz2

tar -xvf schily-2021-09-18.tar.bz2
cd schily-2021-09-18
sudo make
sudo make install

ls -al mkisofs/OBJ/x86_64-linux-gcc/mkisofs

sudo cp mkisofs/OBJ/x86_64-linux-gcc/mkisofs /usr/bin/mkisofs
mkisofs --version
 