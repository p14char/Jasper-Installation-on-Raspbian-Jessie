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

To enable gmail integration, log in to gmail.com, go to *Settings->Forwarding and POP/IMAP->Enable IMAP* and choose that option.
And then you can go here and enable "Less secure apps":
https://www.google.com/settings/u/2/security/lesssecureapps

**Tip:** 
I have a secondary email just for things like this. So I don't mind enabling less secure access on it, since nothing vital will ever be in it!

If you don't have a second email, I'd suggest you create one. (**Highly recommended!😉**) And then just never give it out, but use only for your personal projects.  Google will allow you to create additional emails! (It used to be that they would *not* allow this.)

You can also check email from multiple accounts by logging into your primary account and going to *Settings->Accounts and Import* and adding additional accounts. ***😎 Yay Google! 😎***
