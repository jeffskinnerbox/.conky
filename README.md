<!--
Maintainer:   jeffskinnerbox@yahoo.com / www.jeffskinnerbox.me
Version:      1.0.4
-->

# Conky Dotfiles
**Conky Dotfiles** is a mash up of various examples [Corky][01] from across the 'net.
Therefore, out of respect, guilt, and a morbid fear of lawyers,
I maintain a reasonably complete list of sources.
Check out the references / sources below and you may find a few additional gems.

## Conky
Conky is a light-weight system monitor for X Window that displays any information on your desktop.
It is highly configurable as it is able to monitor literally any aspect of your system
from hard-drive temperature through number of users logged in to currently played music song.
Unlike system monitors that use high-level widget toolkits to render their information,
Conky is drawn directly in an X window (typically the desktop).
This allows it to consume relatively fewer system resources.
Conky is highly configurable and is able to monitor many system variables
including the status of the CPU, memory, swap space, disk storage, temperatures,
processes, network interfaces, battery power, system messages, e-mail inboxes, and much more.

### Installation of Conky
Installation of Conky is simple. Open up terminal and enter:

```bash
# install conky
sudo apt-get -y install conky-all
```

### Starting Conky (or any program) at Login
Typically, you want Conky to automatically start at the boot.
You start corky with the `$HOME/.xsessionrc` file with
`conky --pause=20 --config=/home/jeff/.conky/conkyrc`,
but for Gnome, find and open the **Startup Applications** GUI utility
and use it to set Conky to start at the boot time.
A potential alternative is to create a script via the `gnome-session-properties` utility,
or equivalently, create the following file named `~/.config/autostart/conky.desktop`:

```
[Desktop Entry]
Type=Application
Exec=conky --pause=20 --config=/home/jeff/.conky/conkyrc
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_US]=Conky
Name=Conky
Comment[en_US]=Conky system monitor for the X Window Syste
Comment=Conky system monitor for the X Window System
```

### Debugging Conky
To launch Conky from the commandline, using your resource file,
you do the following

```bash
# launch conky using your $HOME directory conky resource file
conky

# launch conky using another resource file
conky -c /home/jeff/.conky/src/conky-test
```

By default, Conky monitors the `eth0` & `wlan0` network interface,
but there’s a good chance that your network interface uses a different name.
Obtain your network interface name and then replace the `eth0` & `wlan0` values.
You can get your network interface via this command:

```bash
# list network interfaces that are up & working
$ ip address | grep '^[0-9]' | grep 'state UP'
2: eno1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
4: wlx94dbc95110ca: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
```

Make updates to the `~/.conkyrc` file as required.


An easy way to force Conky to reload your `~/.conkyrc`
resource file is to us the command `killall -SIGUSR1 conky`.
This saves you the trouble of having to kill and then restart.

>**NOTE:**I also discovered that  while conky is running
>and your concurrently editing the `.conkyrc` file in vi,
>saving the file appears to cause conky to restart and read the new `.conkyrc` … nice.

### References / Sources
* Some of the sites that proved most useful include:
    * [Ubuntu 20.04 System Monitoring with Conky widgets](https://linuxconfig.org/ubuntu-20-04-system-monitoring-with-conky-widgets)
    * [How to Configure the Conky System Monitor](http://mylinuxramblings.wordpress.com/2010/03/23/how-to-configure-the-conky-system-monitor/)
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
