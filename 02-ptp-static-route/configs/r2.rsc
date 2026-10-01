# Lab 02 - PtP dan Static Route (GNS3)
# Router R2
# Cara pakai: tempel ke terminal RouterOS, atau upload lalu /import file-name=r2.rsc

/system identity set name=R2
/ip address add address=10.10.10.2/30 interface=ether1 comment="Link PtP ke R1"
/ip address add address=192.168.20.1/24 interface=ether2 comment="LAN PC2"
/ip route add dst-address=192.168.10.0/24 gateway=10.10.10.1 comment="Ke LAN R1"
