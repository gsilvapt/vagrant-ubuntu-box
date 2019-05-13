# VAGRANT UBUNTU BASE BOX

This repository contains the sample `Vagrantfile` to create a Ubuntu Bionic Beaver (18.04) box
with SSH, NGiNX, Vim and Docker/Docker-compose installed.

It can (and should) be maintained to add more features as required. Keep in mind though, this should suite as base a base image for all other use cases. If you don't need that thing for all projects, then it probably does not belong here.

## GETTING STARTED

First and foremost, install [Vagrant](https://www.vagrantup.com/downloads.html) and [Virtualbox](https://www.virtualbox.org/) in your machine. 
Other hypervisors will work as well. If you already have one installed, you can use that one but you will need to tweak the Vagrant file to use that provider instead of the default, and already configured, Virtualbox.

Then, to use the `Vagrantfile` as is, just run `vagrant up`. It should create a new machine for you and you should be able to see it in your Virtualbox menu.

If you want or need to tweak your image for specific cases, make sure you open and check the comments in the Vagrantfile and also check [Hashicorp's documentation](https://www.vagrantup.com/docs/)

**Once you are done with your testing, and only then, you can do `vagrant destroy` to remove and clean your local machine.** 


