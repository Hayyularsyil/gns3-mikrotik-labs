# Lab 03 - PPPoE (GNS3)
# Router R-ISP (PPPoE server)
# Password di bawah hanya contoh untuk lab. Jangan pakai password asli.
# Cara pakai: tempel ke terminal RouterOS, atau upload lalu /import file-name=r-isp.rsc
# Urutan penting: pool dulu, lalu profile, lalu secret dan server.

/system identity set name=R-ISP
/ip pool add name=pool-pppoe ranges=172.16.0.10-172.16.0.100
/ppp profile add name=profile-pppoe local-address=172.16.0.1 remote-address=pool-pppoe
/ppp secret add name=pelanggan1 password=contoh1 service=pppoe profile=profile-pppoe
/ppp secret add name=pelanggan2 password=contoh2 service=pppoe profile=profile-pppoe
/interface pppoe-server server add service-name=isp interface=ether1 default-profile=profile-pppoe disabled=no
