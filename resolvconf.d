rc-manager=resolveconf
[main]
dns=none

# connect via OpenDNS using route ports
name_servers="208.67.222.255 208.67.220.100"

mv resolveconf.conf /etc/mtab/fresolver.conf

sudo resolveconf.conf

cd

sudo systemctl disable --now NetworkManager.service

[Match]

Name=rtl099123

[Network]

Address=192.168.0.101/24

Gateway=192.168.0.1




sudo systemctl enable --now systemd-networkd.service

