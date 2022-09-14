 #!/bin/bash

sudo wget https://github.com/multipath-tcp/mptcp/releases/download/v0.95.2/kernel-4.19.234.mptcp-87.x86_64.rpm
sudo wget https://github.com/multipath-tcp/mptcp/releases/download/v0.95.2/kernel-4.19.234.mptcp.tar.gz
sudo wget https://github.com/multipath-tcp/mptcp/releases/download/v0.95.2/kernel-devel-4.19.234.mptcp-87.x86_64.rpm
sudo wget https://github.com/multipath-tcp/mptcp/releases/download/v0.95.2/kernel-headers-4.19.234.mptcp-87.x86_64.rpm
sudo wget https://github.com/multipath-tcp/mptcp/releases/download/v0.95.2/linux-headers-4.19.234.mptcp_20220311125841-1_amd64.deb
sudo wget https://github.com/multipath-tcp/mptcp/releases/download/v0.95.2/linux-image-4.19.234.mptcp_20220311125841-1_amd64.deb
sudo wget https://github.com/multipath-tcp/mptcp/releases/download/v0.95.2/linux-image-4.19.234.mptcp_20220311125841-1_amd64.deb
sudo wget https://github.com/multipath-tcp/mptcp/releases/download/v0.95.2/linux-mptcp_v0.95.2_20220311125841-1_all.deb

sudo dpkg -i linux*.deb
sudo apt-get install -f

sudo wget https://github.com/multipath-tcp/mptcp-scripts/blob/master/scripts/rt_table/mptcp_up


sudo cp mptcp_up /etc/network/if-up.d/

sudo chmod 755 /etc/network/if-up.d/mptcp_up


sudo wget https://raw.githubusercontent.com/multipath-tcp/mptcp-scripts/master/scripts/rt_table/mptcp_down

sudo cp mptcp_down /etc/network/if-post-down.d/

sudo chmod 755 mptcp_down /etc/network/if-post-down.d/mptcp_down

sudo sed -i 's/GRUB_TIMEOUT_STYLE=hidden/GRUB_TIMEOUT_STYLE=menu/g' /etc/default/grub
sudo sed -i 's/GRUB_TIMEOUT=0/GRUB_TIMEOUT=10/g' /etc/default/grub
sudo update-grub


