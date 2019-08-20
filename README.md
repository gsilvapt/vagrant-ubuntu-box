# VAGRANT UBUNTU BASE BOX

This repository contains the sample `Vagrantfile` to create a Ubuntu Bionic Beaver (18.04) box
with SSH, NGiNX, Vim and Docker/Docker-compose installed.

It can (and should) be maintained to add more features as required. Keep in mind though, this should suite as base a base image for all other use cases. If you don't need that thing for all projects, then it probably does not belong here.

## GETTING STARTED

First and foremost, install [Vagrant](https://www.vagrantup.com/downloads.html) and [Virtualbox](https://www.virtualbox.org/) in your machine. 
Other hypervisors will work as well. If you already have one installed, you can use that one but you will need to tweak the Vagrant file to use that provider instead of the default, and already configured, Virtualbox.

Then, to use the `Vagrantfile` as is, just run:
* `vagrant up`   

It should create a new machine for you and you should be able to see it in your Virtualbox menu.

If you want or need to tweak your image for specific cases, make sure you open and check the comments in the Vagrantfile and also check [Hashicorp's documentation](https://www.vagrantup.com/docs/)

**Once you are done with your testing, and only then, you can do `vagrant destroy` to remove and clean your local machine.** 

## CREATING A NEW MACHINE FOR PRODUCTION

To create a new machine with this configuration for production, as in, to be used by other devs, start my creating a folder for the project, copy the `Vagrantfile` and `provisions.sh` files from this project into the newly created directory and run:
* `vagrant up`  

Vagrant can also be configured to use multiple machines simultaneously, if the application requires so. However, this option feels out of the scope of this project.
Nevertheless, if you are looking for how to create a cluster of machines, start in the [Vagrant Documentation Page](https://www.vagrantup.com/docs/multi-machine/).  

## UPDATING THIS BOX

When updating this box, please ensure you edit their respective modules:  
* provisions - reflect the `provisions.sh` file and your commits should reference that module.
* box - reflect modifications to the `Vagrantfile` directly, which only envolve machine configurations.
* misc - other kinds of tweaks.

That said, your commits should look similar to:  
```
module: updated something up until 72 characters

    And here I detail the changes I have done if required.

context: if there is any documetnation/news that should associated with this commit
ref: issue that is related to this commit
```
