# Lab 01 - DHCP Server pada MikroTik (GNS3)
# RouterOS 7.21.5
# Cara pakai: tempel ke terminal RouterOS, atau upload lalu /import file-name=dhcp-server.rsc

/ip address add address=192.168.10.1/24 interface=ether1
/ip pool add name=dhcp_pool ranges=192.168.10.10-192.168.10.100
/ip dhcp-server add name=dhcp1 interface=ether1 address-pool=dhcp_pool lease-time=1d
/ip dhcp-server network add address=192.168.10.0/24 gateway=192.168.10.1 dns-server=8.8.8.8
