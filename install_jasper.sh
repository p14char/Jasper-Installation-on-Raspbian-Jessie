#!/bin/bash
cd ~
wget http://downloads.sourceforge.net/project/cmusphinx/sphinxbase/0.8/sphinxbase-0.8.tar.gz
wget http://downloads.sourceforge.net/project/cmusphinx/pocketsphinx/0.8/pocketsphinx-0.8.tar.gz
wget http://distfiles.macports.org/openfst/openfst-1.3.4.tar.gz
wget https://mitlm.googlecode.com/files/mitlm-0.4.1.tar.gz
wget https://m2m-aligner.googlecode.com/files/m2m-aligner-1.2.tar.gz
wget https://phonetisaurus.googlecode.com/files/is2013-conversion.tgz
wget https://www.dropbox.com/s/kfht75czdwucni1/g014b2b.tgz
svn co https://svn.code.sf.net/p/cmusphinx/code/trunk/cmuclmtk/
git clone https://github.com/jasperproject/jasper-client.git jasper
 
tar xf sphinxbase-0.8.tar.gz
tar xf pocketsphinx-0.8.tar.gz
tar xf m2m-aligner-1.2.tar.gz
tar xf openfst-1.3.4.tar.gz
tar xf is2013-conversion.tgz
tar xf mitlm-0.4.1.tar.gz
tar xf g014b2b.tgz

echo --- Configuring and building packages....
sudo apt-get install sphinx-common
cd ~/sphinxbase-0.8/
./configure --enable-fixed && make && sudo make install
cd ~/pocketsphinx-0.8/
./configure && make && sudo make install
cd ~/cmuclmtk/
sudo ./autogen.sh && sudo make && sudo make install
echo --- ... openfst ... ---
cd ~/openfst-1.3.4/
sudo ./configure --enable-compact-fsts --enable-const-fsts --enable-far --enable-lookahead-fsts --enable-pdt
sudo make install
echo --- ... m2m-aligner ... ---
cd ~/m2m-aligner-1.2/
sudo make
cd ~/mitlm-0.4.1/
sudo ./configure && sudo make install
echo --- ... phonetisaurus ... ---
cd ~/is2013-conversion/phonetisaurus/src/
make
echo --- ... g014b2b ... ---
cd ~/g014b2b/
./compile-fst.sh
echo --- ... Installing the files we just built ... ---
mv ~/g014b2b ~/phonetisaurus
sudo cp ~/m2m-aligner-1.2/m2m-aligner /usr/local/bin/m2m-aligner
sudo cp ~/is2013-conversion/bin/phonetisaurus-g2p /usr/local/bin/phonetisaurus-g2p
sudo apt-get install python-pocketsphinx
sudo chmod +x install_jasper_python.sh
echo --- ... Finished!! Rebooting ... ---
echo --- ... --- ... --- ... --- ... --- ... --- ... --- ... --- ... --- ... ----- After reboot, please run "install_jaspter_python.sh"
sudo reboot
echo --- ... You will not see this! ---
echo --- ... a ... ---


# I tried the below, but this did now work right. Do not attempt. This is here for documentation and WARNING purposes only!
#cd ~
#git clone https://github.com/jasperproject/jasper-client.git jasper
#sudo pip install --upgrade setuptools
#sudo pip install -r jasper/client/requirements.txt
#sudo chmod +x jasper/jasper.py
#sudo aptget install python-pyaudio
#sudo apt-get install pocketsphinx
#sudo apt-get install subversion autoconf libtool automake gfortran g++ --yes
#svn co https://svn.code.sf.net/p/cmusphinx/code/trunk/cmuclmtk/
#cd cmuclmtk/
#./autogen.sh && make && sudo make install
#cd ..
## **DO** ***NOT*** RUN THE NEXT LINE ON JESSIE. It can break apt-get!
##sudo su -c "echo 'deb http://ftp.debian.org/debian experimental main contrib non-free' > /etc/apt/sources.list.d/experimental.list"
## If you have already run it, and it's too late, you need to run the command:
## sudo rm /etc/apt/sources.list.d/experimental.list
#sudo apt-get update
#sudo apt-get install 'libstdc++6-4.4-dev'
#sudo apt-get -t experimental install phonetisaurus m2m-aligner mitlm libfst-tools
#sudo apt-get install libfst-tools m2m-aligner phonetisaurus
