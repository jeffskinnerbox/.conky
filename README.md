<!--
Maintainer:   jeffskinnerbox@yahoo.com / www.jeffskinnerbox.me
Version:      1.0.3
-->

# Conky Dotfiles
**Conky Dotfiles** is a mash up of various examples [Corky][01] from across the 'net.
Therefore, out of respect, guilt, and a morbid fear of lawyers,
I maintain a reasonably complete list of sources.
Check out the references / sources below and you may find a few additional gems.

### Conky
Conky is a light-weight system monitor for X Window that displays any information on your desktop.
Unlike system monitors that use high-level widget toolkits to render their information,
Conky is drawn directly in an X window (typically the desktop).
This allows it to consume relatively fewer system resources.
Conky is highly configurable and is able to monitor many system variables
including the status of the CPU, memory, swap space, disk storage, temperatures,
processes, network interfaces, battery power, system messages, e-mail inboxes, and much more.

### Debugging Conky
An easy way to force Conky to reload your `~/.conkyrc`
configuration file is to us the command `killall -SIGUSR1 conky`.
This saves you the trouble of having to kill and then restart.
I also discovered that  while conky is running and your concurrently editing the `.conkyrc` file in vi,
saving the file appears to cause conky to restart and read the new `.conkyrc` … nice.

### References / Sources
* Some of the sites that proved most useful include:
    * [How to Configure the Conky System Monitor](http://mylinuxramblings.wordpress.com/2010/03/23/how-to-configure-the-conky-system-monitor/)
    * [DESKTOP CONKY - A SYSTEM MONITOR FOR X](http://crunchbanglinux.org/wiki/conky)
    * [How To: Configuring Conky](http://lusule.wordpress.com/2008/08/07/how-to-4/)

* Reference stuff
    * [Conky is a free, light-weight system monitor for X](http://conky.sourceforge.net/index.html)
    * [Conky Manual](http://conky.sourceforge.net/docs.html)
    * [Conky Variables](http://conky.sourceforge.net/variables.html)
    * [.conkyrc Settings](http://conky.sourceforge.net/config_settings.html)

* Newer stuff
    * [Get Weather Or System Info On Your Desktop With These 2 Conky Configurations](http://www.webupd8.org/2013/05/get-weather-or-system-info-on-your.html#more)
    * [Setting Up Conky](https://help.ubuntu.com/community/SettingUpConky)
    * [How to make a program appear on the desktop like conky?](http://lifehacker.com/294005/embed-a-terminal-in-the-desktop-with-compiz-fusion)



[01]:http://conky.sourceforge.net/
