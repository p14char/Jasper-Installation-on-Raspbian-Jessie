#!/bin/bash
cd ~
sudo pip install --upgrade setuptools
sudo pip install -r jasper/client/requirements.txt
chmod +x jasper/jasper.py

cd ~/jasper/client
python populate.py

echo --- ... ---\> Finished! You can now run Jasper with "~/jasper/jasper.py" :-\)
echo To enable gmail, go to Settings-\>Forwarding and POP/IMAP-\>Enable IMAP
echo And then go here and enable \"Less secure apps\":
echo https://www.google.com/settings/u/2/security/lesssecureapps
