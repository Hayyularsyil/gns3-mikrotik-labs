# Lab 03 - PPPoE (GNS3)
# Router R-Client2 (PPPoE client)
# Password di bawah hanya contoh untuk lab. Jangan pakai password asli.
# Cara pakai: tempel ke terminal RouterOS, atau upload lalu /import file-name=r-client2.rsc

/system identity set name=R-Client2
/interface pppoe-client add name=pppoe-out1 interface=ether1 user=pelanggan2 password=contoh2 disabled=no
