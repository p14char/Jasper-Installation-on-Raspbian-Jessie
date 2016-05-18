# Jasper-Installation-on-Raspbian-Jessie
Shell scripts that *really work* for installing Google's Jasper on Raspbian

Download the files to your home directory (~) on Raspbian. Then run:

<pre>
chmod +x install_jasper.sh
./install_jasper.sh
</pre>

After this script runs, you'll need to reboot and then run:

<pre>
./install_jasper_python.sh
</pre>

After you get the message at the end that starts with "--- ... ---> Finished!", you can run Jasper with: 
<pre>
~/jasper/jasper.py 
</pre>
✌😎👍

To enable gmail integration, log in to gmail.com, go to Settings->Forwarding and POP/IMAP->Enable IMAP
And then go here and enable "Less secure apps":
https://www.google.com/settings/u/2/security/lesssecureapps
