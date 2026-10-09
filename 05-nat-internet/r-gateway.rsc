# Lab 05 - NAT dan Akses Internet (GNS3)
# Router R-Gateway
# DHCP client di ether1 sudah ada bawaan template, jadi tidak ditambahkan lagi.
# Cara pakai: tempel ke terminal RouterOS, atau upload lalu /import file-name=r-gateway.rsc

/ip address add address=192.168.10.1/24 interface=ether2 comment="LAN PC"
/ip firewall nat add chain=srcnat out-interface=ether1 action=masquerade comment="NAT ke internet"
