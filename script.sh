sudo apt remove mkisofs
sudo apt remove genisoimage

sudo apt install gcc g++ syslinux-utils -y
isohybrid --version
wget -L https://sourceforge.net/projects/schilytools/files/schily-2021-09-18.tar.bz2

tar -xvf schily-2021-09-18.tar.bz2
cd schily-2021-09-18
sudo make
sudo make install

ls -al mkisofs/OBJ/x86_64-linux-gcc/mkisofs

sudo cp mkisofs/OBJ/x86_64-linux-gcc/mkisofs /usr/bin/mkisofs
mkisofs --version

fallocate -l 6G test.img 
wget -L https://mirrors.edge.kernel.org/pub/linux/utils/boot/syslinux/syslinux-6.03.zip
unzip syslinux-6.03.zip
cp bios/core/isolinux.bin .
mkisofs -o test.iso -b isolinux.bin -c boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -iso-level 3 -J -R -V "test" .

