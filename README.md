# Jasper-Installation-on-Raspbian-Jessie
Shell scripts that *really work* for installing Google's Jasper on Raspbian

**Installation**

Download the files to your home directory (~) on Raspbian. Then run:

<pre>
chmod +x install_jasper.sh
./install_jasper.sh
</pre>

After this script runs, you'll need to reboot and then run:

<pre>
./install_jasper_python.sh
</pre>

**Usage**

After you get the message at the end that starts with "--- ... ---> Finished!", you can run Jasper with: 
<pre>
~/jasper/jasper.py 
</pre>
✌😎👍

**Gmail Notices**

To enable gmail integration, log in to gmail.com, go to *Settings->Forwarding and POP/IMAP->Enable IMAP* and choose that option.
And then you can go here and enable "Less secure apps":
https://www.google.com/settings/u/2/security/lesssecureapps

***Tip:*** I have a secondary email just for things like this. So I don't mind enabling less secure access on it, since nothing vital will ever be in it!

If you don't have a second email, I'd suggest you create one. (**Highly recommended!😉**) And then just never give it out, but use only for your personal projects.  Google will allow you to create additional emails! (It used to be that they would *not* allow this.)

You can also check email from multiple accounts by logging into your primary account and going to: 
**Settings->Accounts and Import** 
and adding additional accounts. ***😎 Yay Google! 😎***

<br>&nbsp;<br>
<hr></hr>
**Credits**

I learned how to build Jasper from sources here: http://www.knight-of-pi.org/jasper-manual-installation-on-a-raspberry-pi-2-and-raspbian-jessie/ 

However, that produced several very arcane sounding error messages that were not useful at all, other than to tell you that it did not work, either. 😒 After some digging in the source code I figured out that it was just missing some packages but was hiding the import errors!!! (Not the fault of the author. Things have just evolved. See below.)

** *Well, OK then.* 😉🤓 Fix the import errors and ***poof*** *it works!* **

So this website did help (much, much more than the other attempts I'd made). 

<br>&nbsp;<br>
<hr></hr>
**Summary**

It looks to me like the only reason these errors happened is because even more code has been made available in the standard repositories. So the trick was to pull down all that I could with *apt-get* and build the rest from source. This worked out well. However, I have only used this on one install. 

Please, feel free to create issues with any problems you encounter and we'll see if we can work through those, as well. I'd like to keep this up-to-date. Who knows? Maybe this will become "the place" to learn how to install Google Jasper on Raspbian. (I would be humbled if it does! **😇🕊☮**)
