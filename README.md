# Dotfiles

These are my configuration files specific for my laptop. 
There are many different files for similar software because 
I'm still working on my setup so i have been trying many different things. These files are open
and can be used at your own discretion.

### Configurations

#### This section holds all configurations that are not in my home folder
    
------

For Touchpad natural scrolling I created the file /etc/X11/xorg.conf.d/30-touchpad.conf and added the following lines (as explained in the ArchWiki page https://wiki.archlinux.org/index.php/Libinput#Common_options):

```
Section "InputClass"
	Identifier "devname"
	Driver "libinput"
	MatchIsTouchpad "on"
	Option "NaturalScrolling" "true"
EndSection
```

------

Use vim as diff tool for git diff:

```
git config --global diff.tool vimdiff
git config --global difftool.prompt false
git config --global alias.d difftool
```

------

Disable ipv6 by adding these lines (or creating the file if it doesn't exist) to the file /etc/sysctl.conf (at this time ipv6 causes slowdown on every action that is internet dependant)

```
net.ipv6.conf.all.disable_ipv6 = 1
net.ipv6.conf.default.disable_ipv6 = 1
net.ipv6.conf.lo.disable_ipv6 = 1
```

After that, use the folowing command to commit the changes:

```
sudo sysctl -p /etc/sysctl.conf
```
