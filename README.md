github-pages-machine (virtual box + vagrant)
==================================================================

Software to download:
------------------------------------------------------------------
**Windows:**
* VirtualBox - https://www.virtualbox.org/wiki/Downloads
* Vagrant - http://downloads.vagrantup.com/
* Putty - http://www.putty.org

**Versions:**
* VirtualBox 4.2.2.22
* vagrant

Installation:
------------------------------------------------------------------
Checkout this repository and create a folder "aptcache" with the
directory.

Start the VM:
------------------------------------------------------------------
In general we assume that every developer has an 64Bit system. If you
don't just change the configuration values of the following parameters:
```
config.vm.box = "" // precise64 or precise32
```
```
config.vm.box_url = "" // http://files.vagrantup.com/precise64.box or http://files.vagrantup.com/precise32.box
```
Open a console and change over to the checkout repository.
Start the VM by running the command:
```
vagrant up
```
**Long story short or what happens after executing "vagrant up".**

The first time you start building the machine vagrant will start downloading
the vagrant box (precise64) which is ~330MB. So please make sure you have a
well internet connection. Afterward ruby and it dependencies will be
installed, followed by Jekyll.

Useful Commands
------------------------------------------------------------------
```
vagrant destroy // destroy the vm
vagrant reload  // restart the vm
```
```
jekyll --help
jekyll serve --port 80 --verbose --watch
```

Cookbooks
------------------------------------------------------------------
* apt
* make
* ruby

Links
------------------------------------------------------------------
* https://www.virtualbox.org/
* http://www.vagrantbox.es/
* http://jekyllrb.com/
