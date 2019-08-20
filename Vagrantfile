Vagrant.configure("2") do |config|
# -*- mode: ruby -*- # vi: set ft=ruby : Vagrant.configure("2") do |config|
  # ########--------------------------##########
  # This box uses the base version of Ubuntu Bionic Beaver 18.04 LTS.
  # ########--------------------------##########
  config.vm.box = "ubuntu/bionic64"


  ################################################################
  # Section 1 - Networking, Sharing and Provider configs
  ################################################################
  ## PROVIDER - Should be Virtualbox by default but just in case.
  ## Sets up machine with 2 GBs of RAM and 2 CPUs for VirtualBox
  config.vm.provision "shell", inline: <<-SHELL
    echo "Dealing with the Provider"
    echo "........................."
  SHELL
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 2048
    vb.cpus = 2
    vb.gui = true
  end

  ## NETWORK - Should only be modified when we need custom options.
  ##           The generic defaults will suffice to work for most cases without much hassle.
  # config.vm.network "forwarded_port", guest: 80, host: 8080
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"
  # USE THIS FOR PRIVATE NETWORK CONFIGURATION
  # config.vm.network "private_network", ip: "192.168.33.10" 
  # config.vm.network "public_network"
  
  # SHARING - This is useful to create backups of this machine after creation
  # config.vm.synced_folder ".", "/var/www/html", :nfs => {
  # :mount_options => ["dmode=777", "fmode=666"] }

  ################################################################
  # Section 2 - PROVISIONS: Install SSH, NGINX, DOCKER AND VIM
  ################################################################
  config.vm.provision "shell", path: "provisions.sh"

  ################################################################
  # Section 3 - CLEANUP AND REBOOT
  ################################################################
  # Using inline form
  config.vm.provision "shell", inline: <<-SHELL
    echo "Cleaning up maching";
    apt update;
    apt upgrade -y;
    apt autoremove;
    apt autoclean;

    echo "Restarting container";
    echo "...........................";
    reboot;
  SHELL
end
