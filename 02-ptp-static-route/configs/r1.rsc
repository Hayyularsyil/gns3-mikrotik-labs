# Lab 02 - PtP dan Static Route (GNS3)
# Router R1
# Cara pakai: tempel ke terminal RouterOS, atau upload lalu /import file-name=r1.rsc

/system identity set name=R1
/ip address add address=10.10.10.1/30 interface=ether1 comment="Link PtP ke R2"
/ip address add address=192.168.10.1/24 interface=ether2 comment="LAN PC1"
/ip route add dst-address=192.168.20.0/24 gateway=10.10.10.2 comment="Ke LAN R2"
