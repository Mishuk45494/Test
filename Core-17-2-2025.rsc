# 2025-02-17 21:53:52 by RouterOS 7.16.2
# software id = TV90-D1PN
#
# model = CCR2116-12G-4S+
# serial number = HEM08GVM5Y7
/interface pptp-client
add connect-to=103.181.69.136 name=pptp-out1-utt user=FCOM
/interface ethernet
set [ find default-name=ether4 ] name=ether4-Game
set [ find default-name=ether5 ] name=ether5-Log-Server
set [ find default-name=sfp-sfpplus2 ] advertise="1G-baseT-half,1G-baseT-full,\
    1G-baseX,2.5G-baseT,2.5G-baseX,5G-baseT,10G-baseT,10G-baseSR-LR,10G-baseCR\
    " name=sfp-sfpplus2-All
/interface eoip
add mac-address=02:59:34:6E:F6:79 name=1-1Alamin-Circle remote-address=\
    103.187.99.52 tunnel-id=246
add disabled=yes mac-address=02:57:49:0B:FD:F0 name=Arif-VT remote-address=\
    202.44.111.22 tunnel-id=10
add mac-address=02:57:49:0B:FD:F0 name=ICC remote-address=103.157.94.200 \
    tunnel-id=1236
add local-address=10.112.211.2 mac-address=02:21:DE:7D:67:FB name=Uttara \
    remote-address=103.181.69.136 tunnel-id=900
/interface vlan
add interface=sfp-sfpplus2-All name=0.0_2000_home_user_router vlan-id=2000
add disabled=yes interface=sfp-sfpplus2-All name=1_1-Apple-IIG-972 vlan-id=\
    972
add disabled=yes interface=sfp-sfpplus2-All name=1_2-Apple-CDN-985 vlan-id=\
    985
add disabled=yes interface=sfp-sfpplus2-All name=1_3-Apple-FNA-974 vlan-id=\
    974
add disabled=yes interface=sfp-sfpplus2-All name=1_4-Apple-GGC-973 vlan-id=\
    973
add disabled=yes interface=sfp-sfpplus2-All name=1_5-Apple-BDIX-975 vlan-id=\
    975
add disabled=yes interface=sfp-sfpplus2-All name=2_1-Apple-Sec-IIG-538 \
    vlan-id=538
add disabled=yes interface=sfp-sfpplus2-All name=2_2-Apple-Sec-CDN-938 \
    vlan-id=938
add disabled=yes interface=sfp-sfpplus2-All name=2_3-Apple-Sec-FNA-738 \
    vlan-id=738
add disabled=yes interface=sfp-sfpplus2-All name=2_4-Apple-Sec-GGC-638 \
    vlan-id=638
add disabled=yes interface=sfp-sfpplus2-All name=2_5-Apple-Sec-BDIX-838 \
    vlan-id=838
add interface=ether12 name=3-1-Client-IIG-BL vlan-id=1658
add interface=ether12 name=3-2-Client-FNA-BL vlan-id=1659
add interface=ether12 name=3-3-Client-GGC-BL vlan-id=1660
add interface=ether12 name=3-4-Client-BDIX-BL vlan-id=1661
add interface=sfp-sfpplus2-All name=4.1-EX-IIG vlan-id=808
add interface=sfp-sfpplus2-All name=4.2-EX-CDN vlan-id=809
add interface=sfp-sfpplus2-All name=4.3-EX-FNA vlan-id=810
add interface=sfp-sfpplus2-All name=4.4-EX-GGC vlan-id=811
add interface=sfp-sfpplus2-All name=4.5-EX-BDIX vlan-id=812
add interface=sfp-sfpplus2-All name=5.1-EX-IIG-SEC vlan-id=879
add interface=sfp-sfpplus2-All name=5.2-EX-CDN-SEC vlan-id=880
add interface=sfp-sfpplus2-All name=5.3-EX-FNA-SEC vlan-id=881
add interface=sfp-sfpplus2-All name=5.4-EX-GGC-SEC vlan-id=882
add interface=sfp-sfpplus2-All name=5.5-EX-BDIX-SEC vlan-id=883
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/ip vrf
add disabled=yes interfaces=ether2 name=FNA
add disabled=yes interfaces=ether3 name=BDIX
add disabled=yes interfaces=ether1 name=GGC
/port
set 0 name=serial0
/queue type
add kind=pcq name=1---300-TK pcq-classifier=dst-address pcq-rate=4M
add kind=pcq name=ALL-UP pcq-classifier=src-address pcq-rate=1G
add kind=pcq name=BDIX pcq-classifier=dst-address pcq-dst-address6-mask=64 \
    pcq-rate=850M pcq-src-address6-mask=64
add kind=pcq name=3---500-TK pcq-classifier=dst-address pcq-rate=7M
add kind=pcq name=2---400-TK pcq-classifier=dst-address pcq-rate=5M
add kind=pcq name=4---600-TK pcq-classifier=dst-address pcq-rate=8M
add kind=pcq name=5---700-TK pcq-classifier=dst-address pcq-rate=10M
add kind=pcq name=5---800-TK pcq-classifier=dst-address pcq-rate=12M
add kind=pcq name=6---1000-TK pcq-classifier=dst-address pcq-rate=20M
add kind=pcq name=7---1500-TK pcq-classifier=dst-address pcq-rate=30M
add kind=pcq name=10--MAC pcq-classifier=dst-address pcq-dst-address6-mask=64 \
    pcq-rate=11M pcq-src-address6-mask=64
add kind=pcq name=7---1200-TK pcq-classifier=dst-address pcq-rate=24M
add kind=pcq name=CDN pcq-classifier=dst-address pcq-rate=85M
add kind=pcq name=GGC pcq-classifier=dst-address pcq-dst-address6-mask=64 \
    pcq-rate=850M pcq-src-address6-mask=64
add kind=pcq name=FNA pcq-classifier=dst-address pcq-dst-address6-mask=64 \
    pcq-rate=850M pcq-src-address6-mask=64
add kind=pcq name=All-IIG pcq-classifier=dst-address pcq-rate=50M
add kind=pcq name=20mb-500TK pcq-classifier=dst-address pcq-rate=12M
add kind=pcq name=35mb-800TK pcq-classifier=dst-address pcq-rate=20M
add kind=pcq name=50mb-1000TK pcq-classifier=dst-address pcq-rate=30M
set 24 pcq-rate=1G
set 25 pcq-rate=1G
set 26 bfifo-limit=5000 kind=bfifo
/queue simple
add max-limit=2G/2G name=GGC-GLOBAL queue=default/default target="142.250.0.0/\
    15,172.217.0.0/16,74.125.0.0/16,173.194.0.0/16,173.254.0.0/16,209.0.0.0/8,\
    216.0.0.0/8,34.96.0.0/12"
add max-limit=2G/2G name=FNA-GLOBAL queue=default/default target="31.13.0.0/16\
    ,34.13.0.0/16,57.144.0.0/14,57.144.140.0/23,157.240.0.0/17,66.220.144.0/20\
    ,69.171.224.0/19,129.134.0.0/17,163.70.128.0/17,173.252.96.0/19,184.60.216\
    .0/22"
add max-limit=2G/2G name=Fast.com packet-marks=Fast.com-pkt queue=ALL-UP/BDIX \
    target="10.3.0.0/20,10.4.0.0/20,10.5.0.0/20,172.21.20.0/28,172.20.15.0/27,\
    172.22.20.0/29,172.22.21.0/30,103.7.121.78/32,103.7.121.79/32,10.6.6.0/24,\
    10.6.8.0/24,10.6.10.0/24"
add dst=4.5-EX-BDIX max-limit=2G/2G name=BDIX queue=ALL-UP/BDIX target="10.3.0\
    .0/20,10.4.0.0/20,10.5.0.0/20,172.21.20.0/28,172.20.15.0/27,172.22.20.0/29\
    ,172.22.21.0/30"
add dst=1-1Alamin-Circle max-limit=2G/2G name=Circle queue=ALL-UP/BDIX \
    target="10.3.0.0/20,10.4.0.0/20,10.5.0.0/20,172.21.20.0/28,172.20.15.0/27,\
    172.22.20.0/29,172.22.21.0/30"
add dst=ICC max-limit=2G/2G name=ICC queue=ALL-UP/BDIX target="10.3.0.0/20,10.\
    4.0.0/20,10.5.0.0/20,172.21.20.0/28,172.20.15.0/27,172.22.20.0/29,172.22.2\
    1.0/30"
add dst=ether4-Game max-limit=2G/2G name=ALL-Ftp queue=ALL-UP/BDIX target="10.\
    3.0.0/20,10.4.0.0/20,10.5.0.0/20,172.21.20.0/28,172.20.15.0/27,172.22.20.0\
    /29,172.22.21.0/30"
add dst=4.2-EX-CDN max-limit=2G/2G name=CDN queue=ALL-UP/CDN target="10.3.0.0/\
    20,10.4.0.0/20,10.5.0.0/20,172.21.20.0/28,172.20.15.0/27,172.22.20.0/29,17\
    2.22.21.0/30"
add dst=4.1-EX-IIG max-limit=100M/100M name=\
    FC.bengal-leisure-F9-Bengal-Garments queue=ALL-UP/6---1000-TK target=\
    172.21.20.2/32,172.21.20.3/32
add dst=4.1-EX-IIG max-limit=30M/30M name=FC.sami-Sajid--Sajid2-470/2/b \
    queue=ALL-UP/5---800-TK target=\
    172.21.20.5/32,172.21.20.6/32,172.21.20.4/32
add dst=4.1-EX-IIG max-limit=2G/2G name=SS.Mac queue=ALL-UP/10--MAC target=\
    10.5.12.0/24,10.5.13.0/24 time=1h-17h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=IIG-Off-Peak queue=ALL-UP/All-IIG \
    target="10.3.0.0/20,10.4.0.0/20,10.5.0.0/20,172.21.20.0/28,172.20.15.0/27,\
    172.22.20.0/29,172.22.21.0/30,103.7.121.78/32,103.7.121.79/32,10.6.6.0/24,\
    10.6.8.0/24,10.6.10.0/24" time=1h-17h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=20mb-500TK queue=ALL-UP/20mb-500TK \
    target=10.6.6.0/24 time=17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=35mb-800TK queue=ALL-UP/35mb-800TK \
    target=10.6.8.0/24 time=17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=50mb-1000TK queue=ALL-UP/50mb-1000TK \
    target=10.6.10.0/24 time=17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=MAC queue=ALL-UP/10--MAC target=\
    10.5.5.0/24,10.5.8.0/24,10.5.7.0/24,10.5.12.0/24 time=\
    17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=MAC-2 queue=ALL-UP/10--MAC target=\
    10.5.6.0/24,10.5.9.0/24,10.5.13.0/24 time=\
    17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=500TK queue=ALL-UP/3---500-TK target=\
    10.3.5.0/24,10.3.6.0/24,103.7.121.79/32 time=\
    17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=500TK-1 queue=ALL-UP/3---500-TK \
    target=10.3.7.0/24,10.3.8.0/24 time=17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=500TK-2 queue=ALL-UP/3---500-TK \
    target="10.3.9.0/24,10.3.10.0/24,10.3.11.0/24,10.3.12.0/24,10.3.13.0/24,10\
    .3.14.0/24" time=17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=600TK queue=ALL-UP/4---600-TK target=\
    10.4.6.0/24 time=17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=700TK queue=ALL-UP/5---700-TK target=\
    10.4.7.0/24,103.7.121.142/32 time=17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=800TK queue=ALL-UP/5---800-TK target="\
    10.4.8.0/24,172.20.15.0/27,103.7.121.78/32,103.7.121.79/32,103.7.121.78/32\
    " time=17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=1000TK queue=ALL-UP/6---1000-TK \
    target=10.4.10.0/24 time=17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=1200TK queue=ALL-UP/7---1200-TK \
    target=10.4.12.0/24,172.22.21.0/30,172.22.20.0/29 time=\
    17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=1500TK queue=ALL-UP/7---1500-TK \
    target=10.4.15.0/24,103.7.121.143/32 time=\
    17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=400TK queue=ALL-UP/2---400-TK target=\
    10.3.4.0/24 time=17h-1h,sun,mon,tue,wed,thu,fri,sat
add dst=4.1-EX-IIG max-limit=2G/2G name=300TK-Free queue=ALL-UP/1---300-TK \
    target=10.3.3.0/24,10.3.2.0/24 time=17h-1h,sun,mon,tue,wed,thu,fri,sat
/routing bgp template
add as=64452 disabled=no name=BL-Mikrotik router-id=10.100.101.1 \
    routing-table=main
add as=64994 disabled=no name=Apple router-id=10.10.10.233 routing-table=main
add as=4022 disabled=no name=SAM-FTP router-id=10.99.21.2
add as=65350 disabled=no name=EXABYTE router-id=10.10.10.5
/system logging action
add bsd-syslog=yes name=Log remote=10.10.0.6 syslog-facility=syslog target=\
    remote
/interface pptp-server server
# PPTP connections are considered unsafe, it is suggested to use a more modern VPN protocol instead
set authentication=pap,chap,mschap1,mschap2 enabled=yes
/ip address
add address=10.10.0.1/30 comment=HoME-Router interface=\
    0.0_2000_home_user_router network=10.10.0.0
add address=10.1.10.26/30 comment=Primary interface=1_1-Apple-IIG-972 \
    network=10.1.10.24
add address=10.1.24.26/30 comment=Primary interface=1_4-Apple-GGC-973 \
    network=10.1.24.24
add address=10.1.44.22/30 comment=Primary interface=1_3-Apple-FNA-974 \
    network=10.1.44.20
add address=10.1.64.50/30 comment=Primary interface=1_5-Apple-BDIX-975 \
    network=10.1.64.48
add address=10.1.10.42/30 comment=Secendery interface=2_1-Apple-Sec-IIG-538 \
    network=10.1.10.40
add address=10.1.24.38/30 comment=Secendery interface=2_4-Apple-Sec-GGC-638 \
    network=10.1.24.36
add address=10.1.43.222/30 comment=Secendery interface=2_3-Apple-Sec-FNA-738 \
    network=10.1.43.220
add address=10.1.64.62/30 comment=Secendery interface=2_5-Apple-Sec-BDIX-838 \
    network=10.1.64.60
add address=172.19.17.2/30 comment=Tunnel-FTP interface=1-1Alamin-Circle \
    network=172.19.17.0
add address=116.204.151.148 comment=MiME-Nat-local interface=lo network=\
    116.204.151.148
add address=10.10.0.5/30 comment=logserver interface=ether5-Log-Server \
    network=10.10.0.4
add address=10.10.8.2/30 interface=ether4-Game network=10.10.8.0
add address=172.26.20.1/30 comment=Client-BL interface=3-1-Client-IIG-BL \
    network=172.26.20.0
add address=172.26.21.1/30 comment=Client-BL interface=3-2-Client-FNA-BL \
    network=172.26.21.0
add address=172.26.22.1/30 comment=Client-BL interface=3-3-Client-GGC-BL \
    network=172.26.22.0
add address=172.26.23.1/30 comment=Client-BL interface=3-4-Client-BDIX-BL \
    network=172.26.23.0
add address=10.13.60.146/30 comment=Primary interface=1_2-Apple-CDN-985 \
    network=10.13.60.144
add address=10.1.18.46/30 comment=Secendery interface=2_2-Apple-Sec-CDN-938 \
    network=10.1.18.44
add address=116.204.148.188 comment=MiME-Nat-local interface=lo network=\
    116.204.148.188
add address=103.113.148.228 comment=MiME-Nat-local interface=lo network=\
    103.113.148.228
add address=103.93.34.152 comment=MiME-Nat-local interface=lo network=\
    103.93.34.152
add address=103.136.3.220 comment=MiME-Nat-local interface=lo network=\
    103.136.3.220
add address=103.134.26.124 comment=MiME-Nat-local interface=lo network=\
    103.134.26.124
add address=10.112.211.2/30 comment=Uttara-Ayan-Vai interface=Uttara network=\
    10.112.211.0
add address=103.163.171.16 comment=MiME-Nat-local interface=lo network=\
    103.163.171.16
add address=10.10.12.2/30 interface=Arif-VT network=10.10.12.0
add address=103.103.33.241/30 comment=MiME-Nat-local-X-Link interface=lo \
    network=103.103.33.240
add address=10.20.81.2/30 interface=ICC network=10.20.81.0
add address=172.16.10.178/30 interface=4.1-EX-IIG network=172.16.10.176
add address=172.16.11.178/30 interface=4.3-EX-FNA network=172.16.11.176
add address=172.16.12.178/30 interface=4.4-EX-GGC network=172.16.12.176
add address=172.16.13.178/30 interface=4.5-EX-BDIX network=172.16.13.176
add address=172.18.10.178/30 interface=5.1-EX-IIG-SEC network=172.18.10.176
add address=172.18.11.178/30 interface=5.3-EX-FNA-SEC network=172.18.11.176
add address=172.18.12.178/30 interface=5.4-EX-GGC-SEC network=172.18.12.176
add address=172.18.13.178/30 interface=5.5-EX-BDIX-SEC network=172.18.13.176
add address=172.17.10.178/30 interface=4.2-EX-CDN network=172.17.10.176
add address=172.19.10.178/30 interface=5.2-EX-CDN-SEC network=172.19.10.176
add address=103.7.121.136 comment=EX-loopback interface=lo network=\
    103.7.121.136
add address=103.7.121.137 comment=EX-loopback disabled=yes interface=lo \
    network=103.7.121.137
add address=103.7.121.141 comment=EX-loopback disabled=yes interface=lo \
    network=103.7.121.141
/ip cloud
set ddns-enabled=yes ddns-update-interval=10m
/ip dns
set servers=8.8.8.8,8.8.4.4,1.1.1.1
/ip firewall address-list
add address=172.20.15.0/27 comment=Fast list=Log
add address=116.204.148.188/30 comment=Mime-Nat list=REAL_IP_OUT
add address=103.163.171.16/30 comment=Mime-Nat list=REAL_IP_OUT
add address=15.1.1.0/24 list=circle
add address=15.1.2.0/24 list=circle
add address=15.1.3.0/24 list=circle
add address=15.1.4.0/24 list=circle
add address=15.1.5.0/24 list=circle
add address=15.2.2.0/24 list=circle
add address=142.250.0.0/15 disabled=yes list=GGC-GLOBAL
add address=172.217.0.0/16 disabled=yes list=GGC-GLOBAL
add address=74.125.0.0/16 disabled=yes list=GGC-GLOBAL
add address=173.254.0.0/16 disabled=yes list=GGC-GLOBAL
add address=209.0.0.0/8 disabled=yes list=GGC-GLOBAL
add address=216.0.0.0/8 disabled=yes list=GGC-GLOBAL
add address=116.204.151.148/30 comment=Mime-Nat list=REAL_IP_OUT
add address=172.31.100.0/24 comment=FC-300-TK list=Log
add address=172.31.103.0/24 comment=FC-400-TK list=Log
add address=172.31.106.0/24 comment=FC-500-TK list=Log
add address=172.31.107.0/24 comment=FC-500-TK-2 list=Log
add address=172.31.108.0/24 comment=FC-500-TK-3 list=Log
add address=172.31.109.0/24 comment=FC-500-TK-4 list=Log
add address=172.31.110.0/24 comment=FC-500-TK-5 list=Log
add address=172.31.111.0/24 comment=FC-500-TK-6 list=Log
add address=172.31.112.0/24 comment=FC-500-TK-7 list=Log
add address=172.31.114.0/24 comment=FC-600-TK list=Log
add address=172.31.118.0/24 comment=FC-700-TK list=Log
add address=172.31.122.0/24 comment=FC-800-TK list=Log
add address=172.31.126.0/24 comment=FC-1000TK list=Log
add address=172.31.130.0/24 comment=FC-1200TK list=Log
add address=172.31.133.0/24 comment=FC-1500TK list=Log
add address=172.31.137.0/24 comment=FC-MAC list=Log
add address=172.31.138.0/24 comment=FC-MAC-2 list=Log
add address=172.31.139.0/24 comment=FC-MAC-3 list=Log
add address=172.31.140.0/24 comment=FC-MAC-4 list=Log
add address=172.31.145.0/24 comment=FC-FREE list=Log
add address=103.93.34.152/30 comment=Mime-Nat list=REAL_IP_OUT
add address=172.21.20.0/28 comment=BRB list=Log
add address=172.22.20.0/29 comment=Pantho list=Log
add address=31.13.0.0/16 list=FNA-GLOBAL
add address=103.93.34.153 comment=SS.araf516 list=Log
add address=103.93.34.154 comment=SS.refat205/1 list=Log
add address=10.10.50.0/24 comment=SS-Mac list=Log
add address=103.113.148.228/30 comment=Mime-Nat list=REAL_IP_OUT
add address=103.136.3.220/30 comment=Mime-Nat list=REAL_IP_OUT
add address=103.134.26.124/30 comment=Mime-Nat list=REAL_IP_OUT
add address=173.194.0.0/16 disabled=yes list=GGC-GLOBAL
add address=172.22.21.0/30 comment=Protul list=Log
add address=57.144.140.0/23 list=FNA-GLOBAL
add address=57.144.0.0/14 list=FNA-GLOBAL
add address=34.13.0.0/16 list=FNA-GLOBAL
add address=129.134.0.0/17 list=FNA-GLOBAL
add address=163.70.128.0/17 list=FNA-GLOBAL
add address=173.252.96.0/19 list=FNA-GLOBAL
add address=184.60.216.0/22 list=FNA-GLOBAL
add address=69.171.224.0/19 list=FNA-GLOBAL
add address=66.220.144.0/20 list=FNA-GLOBAL
add address=103.89.248.0/24 list=circle
add address=103.103.33.240/30 comment=Mime-Nat-X-Link list=REAL_IP_OUT
add address=74.125.131.0/24 list=Google-Global
add address=172.217.1.0/24 list=Google-Global
add address=172.217.164.0/24 list=Google-Global
add address=172.217.160.0/24 list=Google-Global
add address=172.217.168.0/24 list=Google-Global
add address=172.253.63.0/24 list=Google-Global
add address=172.253.115.0/24 list=Google-Global
add address=142.251.32.0/24 list=Google-Global
add address=142.250.71.0/24 list=Google-Global
add address=142.250.79.0/24 list=Google-Global
add address=142.251.46.0/24 list=Google-Global
add address=142.250.72.0/24 list=Google-Global
add address=216.58.223.0/24 list=Google-Global
add address=216.58.215.0/24 list=Google-Global
add address=216.58.194.0/24 list=Google-Global
add address=216.58.195.0/24 list=Google-Global
add address=216.58.221.0/24 list=Google-Global
add address=142.250.192.0/24 list=Google-Global
add address=172.217.0.0/16 list=Google-Global
add address=74.125.0.0/16 list=Google-Global
add address=216.58.192.0/19 list=Google-Global
add address=173.194.0.0/16 list=Google-Global
add address=142.251.0.0/16 list=Google-Global
add address=142.250.0.0/16 list=Google-Global
add address=142.251.12.0/24 list=Google-Global
add address=216.252.220.0/23 list=Google-Global
add address=142.0.0.0/8 disabled=yes list=Google-Global
add address=74.0.0.0/8 disabled=yes list=Google-Global
add address=209.107.160.0/19 list=Google-Global
add address=103.51.53.108/30 list=bgp-network
add address=216.239.32.0/19 list=Google-Global
add address=216.239.60.0/24 list=Google-Global
add address=216.21.160.0/20 list=Google-Global
add address=209.85.128.0/17 list=Google-Global
add address=23.228.128.0/18 list=Google-Global
add address=23.251.128.0/19 list=Google-Global
add address=34.0.0.0/15 list=Google-Global
add address=35.186.0.0/16 list=Google-Global
add address=35.184.0.0/13 list=Google-Global
add address=103.7.121.136/30 list=EX-IP-OUT
add address=103.7.121.140 comment="Only For CDN" list=EX-IP-OUT
add address=10.3.0.0/20 comment=FC-FREE-FC-500TK list=Log
add address=10.4.0.0/20 comment=FC-600TK-FC-1500TK list=Log
add address=10.5.0.0/20 comment=FC-Mac-1-SS-Mac list=Log
add address=157.240.0.0/17 list=FNA-GLOBAL
add address=103.7.121.78/31 list=EX-IP-OUT
add address=103.7.121.142/31 list=EX-IP-OUT
add address=103.7.121.78/31 list=Public-IP
add address=103.7.121.142/31 list=Public-IP
add address=103.7.121.78/31 comment=Clinet list=Log
add address=103.7.121.142/31 comment=Clinet list=Log
add address=103.7.121.141 list=EX-IP-OUT
add address=103.176.3.144/29 comment="for bdix" list=EX-IP-OUT
add address=182.79.164.0/24 list=Fast.com
add address=45.57.50.0/24 list=Fast.com
add address=45.57.51.0/24 list=Fast.com
add address=23.246.55.0/24 list=Fast.com
add address=205.234.175.0/24 comment=openspeedtest.com list=Fast.com
add address=202.150.221.0/24 comment=speedtest.com.sg list=Fast.com
add address=139.99.0.0/17 comment=proof.ovh.net list=Fast.com
add address=61.246.223.0/24 comment=speedinternet.com list=Fast.com
add address=45.76.0.0/20 comment=testmy.net list=Fast.com
add address=89.187.160.0/23 comment=speedtest.org list=Fast.com
add address=63.224.0.0/12 comment=centurylink.com list=Fast.com
add address=182.79.161.0/24 list=Fast.com
add address=182.79.223.0/24 list=Fast.com
add address=182.79.245.0/24 list=Fast.com
add address=199.91.152.0/21 comment=FileCR list=Fast.com
/ip firewall filter
add action=drop chain=forward dst-port=25 protocol=tcp
/ip firewall mangle
add action=log chain=prerouting connection-state=established protocol=tcp \
    src-address-list=Log tcp-flags=fin
add action=change-ttl chain=postrouting new-ttl=increment:100 passthrough=yes \
    src-address-list=circle
add action=mark-routing chain=prerouting disabled=yes new-routing-mark=*400 \
    passthrough=yes src-address=172.31.133.0/24
add action=mark-connection chain=forward dst-address-list=Fast.com \
    new-connection-mark=Fast.com passthrough=yes
add action=mark-packet chain=forward connection-mark=Fast.com \
    new-packet-mark=Fast.com-pkt passthrough=yes src-address-list=Fast.com
/ip firewall nat
add action=dst-nat chain=dstnat dst-port=53 protocol=tcp to-addresses=8.8.4.4 \
    to-ports=53
add action=dst-nat chain=dstnat dst-port=53 protocol=udp to-addresses=8.8.4.4 \
    to-ports=53
add action=src-nat chain=srcnat out-interface=4.1-EX-IIG src-address-list=\
    !Public-IP to-addresses=103.7.121.136/30
add action=src-nat chain=srcnat out-interface=4.2-EX-CDN src-address-list=\
    !Public-IP to-addresses=103.7.121.141
add action=src-nat chain=srcnat out-interface=4.3-EX-FNA to-addresses=\
    103.7.121.136/30
add action=src-nat chain=srcnat out-interface=4.4-EX-GGC to-addresses=\
    103.7.121.136/30
add action=src-nat chain=srcnat out-interface=4.5-EX-BDIX src-address-list=\
    !Public-IP to-addresses=103.176.3.144/30
add action=src-nat chain=srcnat out-interface=5.1-EX-IIG-SEC \
    src-address-list=!Public-IP to-addresses=103.7.121.136/30
add action=src-nat chain=srcnat out-interface=5.2-EX-CDN-SEC \
    src-address-list=!Public-IP to-addresses=103.7.121.140
add action=src-nat chain=srcnat out-interface=5.3-EX-FNA-SEC to-addresses=\
    103.7.121.136/30
add action=src-nat chain=srcnat out-interface=5.4-EX-GGC-SEC to-addresses=\
    103.7.121.136/30
add action=src-nat chain=srcnat out-interface=5.5-EX-BDIX-SEC \
    src-address-list=!Public-IP to-addresses=103.7.121.136/30
add action=src-nat chain=srcnat disabled=yes out-interface=\
    2_5-Apple-Sec-BDIX-838 src-address-list=!REAL_IP_OUT to-addresses=\
    116.204.151.148/30
add action=src-nat chain=srcnat disabled=yes out-interface=\
    2_4-Apple-Sec-GGC-638 src-address-list=!REAL_IP_OUT to-addresses=\
    116.204.151.148/30
add action=src-nat chain=srcnat disabled=yes out-interface=\
    2_3-Apple-Sec-FNA-738 src-address-list=!REAL_IP_OUT to-addresses=\
    103.163.171.16/30
add action=src-nat chain=srcnat disabled=yes out-interface=\
    2_2-Apple-Sec-CDN-938 src-address-list=!REAL_IP_OUT to-addresses=\
    116.204.151.148/30
add action=src-nat chain=srcnat disabled=yes out-interface=\
    2_1-Apple-Sec-IIG-538 src-address-list=!REAL_IP_OUT to-addresses=\
    116.204.151.148/30
add action=src-nat chain=srcnat disabled=yes out-interface=1_5-Apple-BDIX-975 \
    src-address-list=!REAL_IP_OUT to-addresses=116.204.148.188/30
add action=src-nat chain=srcnat disabled=yes out-interface=1_4-Apple-GGC-973 \
    src-address-list=!REAL_IP_OUT to-addresses=116.204.148.188/30
add action=src-nat chain=srcnat disabled=yes out-interface=1_3-Apple-FNA-974 \
    src-address-list=!REAL_IP_OUT to-addresses=103.163.171.16/30
add action=src-nat chain=srcnat disabled=yes out-interface=1_2-Apple-CDN-985 \
    src-address-list=!REAL_IP_OUT to-addresses=116.204.148.188/30
add action=src-nat chain=srcnat disabled=yes out-interface=1_1-Apple-IIG-972 \
    src-address-list=!REAL_IP_OUT to-addresses=116.204.148.188/30
add action=masquerade chain=srcnat out-interface=1-1Alamin-Circle
add action=masquerade chain=srcnat out-interface=Uttara
add action=masquerade chain=srcnat out-interface=ICC
add action=dst-nat chain=dstnat comment="Home Router" dst-address=\
    103.7.121.136 dst-port=2323 protocol=tcp to-addresses=10.10.0.2 to-ports=\
    2020
add action=dst-nat chain=dstnat comment=BL-Router dst-address=103.7.121.136 \
    dst-port=2324 protocol=tcp to-addresses=172.26.20.2 to-ports=2020
add action=dst-nat chain=dstnat comment=10G-Switch dst-address=103.7.121.136 \
    dst-port=8980 protocol=tcp to-addresses=172.30.30.2 to-ports=8291
add action=dst-nat chain=dstnat comment=10G-Switch dst-address=\
    116.204.151.148 dst-port=8980 protocol=tcp to-addresses=172.30.30.2 \
    to-ports=8291
add action=dst-nat chain=dstnat comment="===FC-EPON-8Port-1===" dst-address=\
    103.7.121.136 dst-port=2222 protocol=tcp to-addresses=172.16.20.2 \
    to-ports=443
add action=dst-nat chain=dstnat comment="===FC-EPON-8Port-2===" dst-address=\
    103.7.121.136 dst-port=2224 protocol=tcp to-addresses=172.16.21.2 \
    to-ports=443
add action=dst-nat chain=dstnat comment="===FC-EPON-8Port-3===" dst-address=\
    103.7.121.136 dst-port=2225 protocol=tcp to-addresses=172.16.22.2 \
    to-ports=443
add action=dst-nat chain=dstnat comment="===FC-EPON-8Port-4===" dst-address=\
    103.7.121.136 dst-port=2226 protocol=tcp to-addresses=172.16.23.2 \
    to-ports=80
add action=dst-nat chain=dstnat comment="===FC-GPON-8Port-1===" dst-address=\
    103.7.121.136 dst-port=2223 protocol=tcp to-addresses=172.16.30.2 \
    to-ports=443
add action=dst-nat chain=dstnat comment=GPON-OLT-BD-FIBER dst-address=\
    103.7.121.136 dst-port=3333 protocol=tcp to-addresses=172.50.50.2 \
    to-ports=443
add action=dst-nat chain=dstnat comment="logserver SSH" dst-address=\
    116.204.151.148 dst-port=22 protocol=tcp to-addresses=10.10.0.6 to-ports=\
    22
add action=dst-nat chain=dstnat comment="logserver mysql" dst-address=\
    116.204.151.148 dst-port=3306 protocol=tcp to-addresses=10.10.0.6 \
    to-ports=3306
add action=dst-nat chain=dstnat comment="logserver zabbix" dst-address=\
    116.204.151.148 dst-port=10050 protocol=tcp to-addresses=10.10.0.6 \
    to-ports=10050
add action=dst-nat chain=dstnat comment="logserver WEB" dst-address=\
    116.204.151.148 dst-port=808 protocol=tcp to-addresses=10.10.0.6 \
    to-ports=80
add action=masquerade chain=srcnat out-interface=ether4-Game
add action=dst-nat chain=dstnat disabled=yes dst-address=10.16.100.244 \
    protocol=tcp to-addresses=10.55.55.4
add action=dst-nat chain=dstnat comment="SPEED TEST-SG" disabled=yes \
    dst-address=202.150.221.170 dst-port=8080 protocol=tcp to-addresses=\
    10.220.220.70
add action=src-nat chain=srcnat disabled=yes dst-address-list=Google-Global \
    to-addresses=116.204.148.188/30
add action=src-nat chain=srcnat disabled=yes dst-address-list=FNA-GLOBAL \
    to-addresses=103.163.171.16/30
/ip ipsec profile
set [ find default=yes ] dpd-interval=2m dpd-maximum-failures=5
/ip route
add check-gateway=ping comment=FC-Fast-User disabled=no distance=1 \
    dst-address=172.20.15.0/27 gateway=10.10.0.2 pref-src="" routing-table=\
    main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment="===FC-EPON-8Port-1===" disabled=no distance=1 \
    dst-address=172.16.20.0/30 gateway=10.10.0.2 pref-src="" routing-table=\
    main scope=30 suppress-hw-offload=no target-scope=10
add comment=CN disabled=no distance=1 dst-address=15.1.2.0/24 gateway=\
    172.19.17.1 pref-src="" routing-table=main scope=30 suppress-hw-offload=\
    no target-scope=10
add comment=CN disabled=no distance=1 dst-address=15.1.1.0/24 gateway=\
    172.19.17.1 pref-src="" routing-table=main scope=30 suppress-hw-offload=\
    no target-scope=10
add check-gateway=ping disabled=yes distance=2 dst-address=0.0.0.0/0 gateway=\
    10.1.10.25 pref-src="" routing-table=main scope=30 suppress-hw-offload=no \
    target-scope=10
add blackhole comment=MiME disabled=no distance=1 dst-address=\
    116.204.148.188/30 gateway="" pref-src="" routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add comment=CN disabled=no distance=1 dst-address=15.1.3.0/24 gateway=\
    172.19.17.1 pref-src="" routing-table=main scope=30 suppress-hw-offload=\
    no target-scope=10
add comment=CN disabled=no distance=1 dst-address=15.1.4.0/24 gateway=\
    172.19.17.1 pref-src="" routing-table=main scope=30 suppress-hw-offload=\
    no target-scope=10
add comment=CN disabled=no distance=1 dst-address=15.1.5.0/24 gateway=\
    172.19.17.1 pref-src="" routing-table=main scope=30 suppress-hw-offload=\
    no target-scope=10
add comment=CN disabled=no distance=1 dst-address=15.2.2.0/24 gateway=\
    172.19.17.1 pref-src="" routing-table=main scope=30 suppress-hw-offload=\
    no target-scope=10
add check-gateway=ping comment="===FC-GPON-8Port-1===" disabled=no distance=1 \
    dst-address=172.16.30.0/30 gateway=10.10.0.2 pref-src="" routing-table=\
    main scope=30 suppress-hw-offload=no target-scope=10
add comment=CN disabled=no distance=1 dst-address=103.89.248.0/24 gateway=\
    172.19.17.1 pref-src="" routing-table=main scope=30 suppress-hw-offload=\
    no target-scope=10
add blackhole comment=MiME disabled=no distance=1 dst-address=\
    116.204.151.148/30 gateway="" pref-src="" routing-table=main scope=30 \
    suppress-hw-offload=yes target-scope=10
add check-gateway=ping comment=FC-300TK disabled=yes distance=1 dst-address=\
    172.31.100.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-400TK disabled=yes distance=1 dst-address=\
    172.31.103.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-500TK disabled=yes distance=1 dst-address=\
    172.31.106.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-500T-2 disabled=yes distance=1 dst-address=\
    172.31.107.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-500T-3 disabled=yes distance=1 dst-address=\
    172.31.108.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-500T-4 disabled=yes distance=1 dst-address=\
    172.31.109.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-500T-5 disabled=yes distance=1 dst-address=\
    172.31.110.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-500T-6 disabled=yes distance=1 dst-address=\
    172.31.111.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-500T-7 disabled=yes distance=1 dst-address=\
    172.31.112.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-600TK disabled=yes distance=1 dst-address=\
    172.31.114.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-700TK disabled=yes distance=1 dst-address=\
    172.31.118.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-800TK disabled=yes distance=1 dst-address=\
    172.31.122.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-1000TK disabled=yes distance=1 dst-address=\
    172.31.126.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-1200TK disabled=yes distance=1 dst-address=\
    172.31.130.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-1500TK disabled=yes distance=1 dst-address=\
    172.31.133.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-FREE disabled=yes distance=1 dst-address=\
    172.31.145.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-MAC disabled=yes distance=1 dst-address=\
    172.31.137.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-MAC-2 disabled=yes distance=1 dst-address=\
    172.31.138.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-MAC-3 disabled=yes distance=1 dst-address=\
    172.31.139.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-MAC-4 disabled=yes distance=1 dst-address=\
    172.31.140.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment="===FC-EPON-8Port-2===" disabled=no distance=1 \
    dst-address=172.16.21.0/30 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment="===FC-EPON-8Port-3===" disabled=no distance=1 \
    dst-address=172.16.22.0/30 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment="===FC-EPON-8Port-4===" disabled=no distance=1 \
    dst-address=172.16.23.0/30 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-BRB-Garments disabled=no distance=1 \
    dst-address=172.21.20.0/28 gateway=10.10.0.2 pref-src=0.0.0.0 \
    routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-Pantho+Protul disabled=no distance=1 \
    dst-address=172.22.20.0/29 gateway=10.10.0.2 pref-src=0.0.0.0 \
    routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment="===HOME-SW_Down===" disabled=no distance=1 \
    dst-address=172.30.30.2/32 gateway=10.10.0.2 pref-src="" routing-table=\
    main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment="====HOME-Public-IP====" disabled=no distance=\
    1 dst-address=116.204.151.149/32 gateway=10.10.0.2 pref-src="" \
    routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add comment=BL disabled=no distance=1 dst-address=116.204.151.150/32 gateway=\
    172.26.20.2 pref-src="" routing-table=main scope=40 suppress-hw-offload=\
    no target-scope=10
add blackhole comment=MiME disabled=no distance=1 dst-address=\
    103.163.171.16/30 gateway="" pref-src="" routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game disabled=yes distance=1 dst-address=\
    13.248.192.0/20 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game disabled=yes distance=1 dst-address=\
    75.2.64.0/20 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game disabled=yes distance=1 dst-address=\
    76.223.64.0/20 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game disabled=yes distance=1 dst-address=\
    99.83.128.0/20 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game disabled=yes distance=1 dst-address=\
    151.106.246.0/24 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game disabled=yes distance=1 dst-address=\
    151.106.247.0/24 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game disabled=yes distance=1 dst-address=\
    151.106.248.0/24 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game disabled=yes distance=1 dst-address=\
    99.83.144.0/20 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game disabled=yes distance=1 dst-address=\
    43.229.64.0/22 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game disabled=yes distance=1 dst-address=\
    99.83.176.0/20 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game disabled=yes distance=1 dst-address=\
    76.223.0.0/20 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game disabled=yes distance=1 dst-address=\
    75.2.48.0/20 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-Dflix.live disabled=no distance=1 \
    dst-address=172.16.172.166/32 gateway=10.10.8.1 routing-table=main scope=\
    30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-Dflix.live-TV disabled=no distance=1 \
    dst-address=172.16.172.182/32 gateway=10.10.8.1 routing-table=main scope=\
    30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-Dflix.live disabled=no distance=1 \
    dst-address=172.16.172.150/32 gateway=10.10.8.1 routing-table=main scope=\
    30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-Dflix.live disabled=no distance=1 \
    dst-address=10.90.90.200/32 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add comment=CDN disabled=no distance=1 dst-address=169.136.113.0/24 gateway=\
    10.13.60.145 routing-table=main scope=40 suppress-hw-offload=no \
    target-scope=10
add check-gateway=ping comment=Game-FTPBD.net disabled=no distance=1 \
    dst-address=103.58.73.0/28 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-SS-MAC disabled=yes distance=1 dst-address=\
    10.10.50.0/24 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add blackhole comment=MiME disabled=no distance=1 dst-address=\
    103.113.148.228/30 gateway="" pref-src="" routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-Eprocure disabled=yes distance=1 \
    dst-address=103.40.82.19/32 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add blackhole comment=MiME disabled=no distance=1 dst-address=\
    103.93.34.152/30 gateway="" pref-src="" routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add blackhole comment=MiME disabled=no distance=1 dst-address=\
    103.136.3.220/30 gateway="" pref-src="" routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add blackhole comment=MiME disabled=no distance=1 dst-address=\
    103.134.26.124/30 gateway="" pref-src="" routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment="====HOME-Public-IP====SS.araf516" disabled=no \
    distance=1 dst-address=103.93.34.153/32 gateway=10.10.0.2 pref-src="" \
    routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment="====HOME-Public-IP====SS.araf516" disabled=no \
    distance=1 dst-address=103.93.34.154/32 gateway=10.10.0.2 pref-src="" \
    routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=UTTARA_TUNNEL disabled=no distance=1 \
    dst-address=10.220.220.0/24 gateway=10.112.211.1 routing-table=main \
    scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=UTTARA_TUNNEL disabled=no distance=1 \
    dst-address=10.55.55.0/24 gateway=10.112.211.1 routing-table=main scope=\
    30 suppress-hw-offload=no target-scope=10
add comment=CDN disabled=no distance=1 dst-address=169.136.113.0/24 gateway=\
    10.1.18.45 routing-table=main scope=40 suppress-hw-offload=no \
    target-scope=10
add check-gateway=ping comment=FC-Pantho+Protul disabled=no distance=1 \
    dst-address=172.22.21.0/30 gateway=10.10.0.2 pref-src=0.0.0.0 \
    routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game disabled=yes distance=1 dst-address=\
    66.22.220.0/23 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add comment=Real-IP disabled=yes distance=1 dst-address=103.134.26.124/30 \
    gateway=10.10.0.2 routing-table=main scope=30 suppress-hw-offload=no \
    target-scope=10
add check-gateway=ping comment="====HOME-Public-IP====" disabled=yes \
    distance=1 dst-address=103.136.3.220/30 gateway=10.10.0.2 pref-src="" \
    routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-fileserver.ebox.live disabled=no \
    distance=1 dst-address=10.90.90.0/24 gateway=10.10.8.1 routing-table=main \
    scope=30 suppress-hw-offload=no target-scope=10
add blackhole disabled=no distance=1 dst-address=103.103.33.240/30 gateway="" \
    routing-table=main scope=30 suppress-hw-offload=no
add check-gateway=ping comment=Game-Apple disabled=yes distance=1 \
    dst-address=17.0.0.0/8 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=ICC-FTP disabled=no distance=1 dst-address=\
    10.16.100.0/24 gateway=10.20.81.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add blackhole comment=EX-BLACKHOLE disabled=no distance=1 dst-address=\
    103.7.121.136/30 gateway="" routing-table=main scope=30 \
    suppress-hw-offload=no
add check-gateway=ping comment=EX-IP-DEFAULT disabled=yes distance=1 \
    dst-address=0.0.0.0/0 gateway=172.16.10.178 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add blackhole comment=EX-BLACKHOLE disabled=no distance=1 dst-address=\
    103.7.121.140/32 gateway="" routing-table=main scope=30 \
    suppress-hw-offload=no
add check-gateway=ping comment="====HOME-Public-IP====Exabyte" disabled=no \
    distance=1 dst-address=103.7.121.137/32 gateway=10.10.0.2 pref-src="" \
    routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add comment=BL-Exabyte disabled=no distance=1 dst-address=103.7.121.138/32 \
    gateway=172.26.20.2 pref-src="" routing-table=main scope=40 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-1-FREE-FC-500TK disabled=no distance=1 \
    dst-address=10.3.0.0/20 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-1-600TK-FC-1500TK disabled=no distance=1 \
    dst-address=10.4.0.0/20 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-1-Mac-1-SS-Mac disabled=no distance=1 \
    dst-address=10.5.0.0/20 gateway=10.10.0.2 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-Fifa disabled=no distance=1 dst-address=\
    13.212.0.0/14 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=ICC-FTP disabled=no distance=1 dst-address=\
    10.222.222.220/30 gateway=10.20.81.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=ICC-FTP disabled=no distance=1 dst-address=\
    172.16.16.0/24 gateway=10.20.81.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=ICC-FTP disabled=no distance=1 dst-address=\
    172.16.29.0/24 gateway=10.20.81.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add blackhole comment=EX-BLACKHOLE disabled=no distance=1 dst-address=\
    103.7.121.142/31 gateway="" routing-table=main scope=30 \
    suppress-hw-offload=no
add blackhole comment=EX-BLACKHOLE disabled=no distance=1 dst-address=\
    103.7.121.78/31 gateway="" routing-table=main scope=30 \
    suppress-hw-offload=no
add check-gateway=ping comment=FC-IP-an@maksumul683/9/a disabled=no distance=\
    1 dst-address=103.7.121.78/32 gateway=10.10.0.2 pref-src="" \
    routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-IP-FC.kibria513-7a-am disabled=no distance=\
    1 dst-address=103.7.121.79/32 gateway=10.10.0.2 pref-src="" \
    routing-table=main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-IP-SS.araf516 disabled=no distance=1 \
    dst-address=103.7.121.142/32 gateway=10.10.0.2 pref-src="" routing-table=\
    main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=FC-IP-FC.tanjim400-2a disabled=no distance=1 \
    dst-address=103.7.121.143/32 gateway=10.10.0.2 pref-src="" routing-table=\
    main scope=30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-Akamai disabled=yes distance=1 \
    dst-address=23.32.0.0/11 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add comment=CN-Akamai disabled=yes distance=1 dst-address=23.192.0.0/11 \
    gateway=172.19.17.1 pref-src="" routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-Google disabled=yes distance=1 \
    dst-address=34.96.0.0/12 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add comment=Game-Akamai disabled=yes distance=1 dst-address=182.79.164.0/24 \
    gateway=10.10.8.1 pref-src="" routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add comment=Game-Akamai disabled=yes distance=1 dst-address=45.57.50.0/24 \
    gateway=10.10.8.1 pref-src="" routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add comment=Game-Akamai disabled=yes distance=1 dst-address=45.57.51.0/24 \
    gateway=10.10.8.1 pref-src="" routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add comment=Game-Akamai disabled=yes distance=1 dst-address=23.246.55.0/24 \
    gateway=10.10.8.1 pref-src="" routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add comment=Game-Akamai disabled=yes distance=1 dst-address=23.246.54.0/24 \
    gateway=10.10.8.1 pref-src="" routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-Speedtest.com.sg disabled=no distance=1 \
    dst-address=202.150.221.0/24 gateway=10.10.8.1 routing-table=main scope=\
    30 suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-FreeFire disabled=yes distance=1 \
    dst-address=202.81.119.0/24 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-FreeFire disabled=yes distance=1 \
    dst-address=202.81.116.0/23 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-FreeFire disabled=yes distance=1 \
    dst-address=154.93.46.0/24 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-FreeFire disabled=yes distance=1 \
    dst-address=154.95.81.0/24 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-FreeFire disabled=yes distance=1 \
    dst-address=148.222.64.0/22 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-FreeFire disabled=yes distance=1 \
    dst-address=156.59.64.0/22 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-FreeFire disabled=yes distance=1 \
    dst-address=59.153.158.0/24 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add check-gateway=ping comment=Game-FreeFire disabled=yes distance=1 \
    dst-address=202.181.80.0/21 gateway=10.10.8.1 routing-table=main scope=30 \
    suppress-hw-offload=no target-scope=10
add blackhole disabled=no dst-address=103.7.121.141/32 gateway="" \
    routing-table=main suppress-hw-offload=no
add check-gateway=ping comment=FC-1-20mb-500TK-50mb-1000TK disabled=no \
    distance=1 dst-address=10.6.0.0/20 gateway=10.10.0.2 routing-table=main \
    scope=30 suppress-hw-offload=no target-scope=10
add blackhole disabled=no dst-address=103.176.3.144/29 gateway="" \
    routing-table=main suppress-hw-offload=no
/ip service
set telnet disabled=yes
set ftp disabled=yes
set www port=2020
set ssh disabled=yes
set api port=5020
set winbox port=2121
set api-ssl disabled=yes
/ppp secret
add local-address=10.150.10.1 name=mime remote-address=10.150.10.244
add local-address=10.220.2.1 name=AYON87899 remote-address=10.220.2.11
/routing bgp connection
add as=64452 disabled=no local.address=172.26.22.1 .role=ebgp name=4_BL-GGC \
    output.filter-chain=CLIENT-GGC-OUT-NEW .no-client-to-client-reflection=\
    yes .redistribute=static,bgp remote.address=172.26.22.2/30 .as=1654 \
    router-id=10.100.101.1 routing-table=main templates=BL-Mikrotik
add as=64452 disabled=no local.address=172.26.21.1 .role=ebgp name=4_BL-FNA \
    output.filter-chain=CLIENT-FNA-OUT-NEW .no-client-to-client-reflection=\
    yes .redistribute=static,bgp remote.address=172.26.21.2/30 .as=1654 \
    router-id=10.100.101.1 routing-table=main templates=BL-Mikrotik
add as=64994 disabled=no local.address=172.26.23.1 .role=ebgp name=4_BL-BDIX \
    output.filter-chain=CLIENT-BDIX-OUT-NEW .no-client-to-client-reflection=\
    yes .redistribute=static,bgp remote.address=172.26.23.2/30 .as=1654 \
    router-id=10.100.101.1 routing-table=main templates=Apple
add as=64994 disabled=yes local.role=ebgp name=3_Apple-iig \
    output.filter-chain=MiME-BGP-OUT .network=REAL_IP_OUT remote.address=\
    10.1.10.25/30 .as=139901 router-id=10.1.10.26 routing-table=main \
    templates=Apple
add as=64994 disabled=yes input.filter=ggc_in-pri local.role=ebgp name=\
    3_Apple-ggc output.filter-chain=MiME-BGP-OUT .network=REAL_IP_OUT \
    remote.address=10.1.24.25/30 .as=137967 router-id=10.1.24.26 \
    routing-table=main templates=Apple
add as=64994 disabled=yes input.filter=fna_in-pri local.role=ebgp name=\
    3_Apple-fna output.filter-chain=MiME-BGP-OUT .network=REAL_IP_OUT \
    remote.address=10.1.44.21/30 .as=137967 router-id=10.1.44.22 \
    routing-table=main templates=Apple
add as=64994 disabled=yes input.filter=bdix_in-pri local.role=ebgp name=\
    3_Apple-bdix output.filter-chain=MiME-BGP-OUT .network=REAL_IP_OUT \
    remote.address=10.1.64.49/30 .as=137967 router-id=10.1.64.50 \
    routing-table=main templates=Apple
add as=64994 disabled=yes local.address=10.1.10.42 .role=ebgp name=\
    4_Apple-iig_sec output.filter-chain=MiME-BGP-BKP-OUT .network=REAL_IP_OUT \
    remote.address=10.1.10.41/30 .as=139901 router-id=10.1.10.42 \
    routing-table=main templates=Apple
add as=64994 disabled=yes input.filter=ggc_in-bkp local.address=10.1.24.38 \
    .role=ebgp name=4_Apple-ggc_sec output.filter-chain=MiME-BGP-BKP-OUT \
    .network=REAL_IP_OUT remote.address=10.1.24.37/30 .as=137967 router-id=\
    10.1.10.42 routing-table=main templates=Apple
add as=64994 disabled=yes input.filter=fna_in-bkp local.address=10.1.43.222 \
    .role=ebgp name=4_Apple-fna-sec output.filter-chain=MiME-BGP-BKP-OUT \
    .network=REAL_IP_OUT remote.address=10.1.43.221/30 .as=137967 router-id=\
    10.1.10.42 routing-table=main templates=Apple
add as=64994 disabled=yes input.filter=bdix_in-bkp local.address=10.1.64.62 \
    .role=ebgp name=4_Apple-bdix-sec output.filter-chain=MiME-BGP-OUT \
    .network=REAL_IP_OUT remote.address=10.1.64.61/30 .as=137967 router-id=\
    10.1.10.42 routing-table=main templates=Apple
add as=64994 disabled=yes input.filter=PRI_in local.address=10.13.60.146 \
    .role=ebgp name=3_Apple-cdn output.filter-chain=MiME-BGP-OUT \
    .redistribute=static,bgp remote.address=10.13.60.145/32 .as=139901 \
    router-id=10.100.101.1 routing-table=main templates=Apple
add as=64994 disabled=yes input.filter=cdn_in-bkp local.address=10.1.18.46 \
    .role=ebgp name=4_Apple-cdn_sec output.filter-chain=MiME-BGP-BKP-OUT \
    .redistribute=static,bgp remote.address=10.1.18.45/30 .as=139901 \
    router-id=10.100.101.1 routing-table=main templates=Apple
add as=65350 disabled=no input.filter=fna_in-pri local.address=172.16.11.178 \
    .role=ebgp name=EX-FNA output.filter-chain=EX-BGP-OUT_PRI .network=\
    EX-IP-OUT remote.address=172.16.11.177/30 .as=134723 router-id=10.10.10.5 \
    routing-table=main templates=EXABYTE
add as=65350 disabled=no input.filter=cdn_in-pri local.address=172.17.10.178 \
    .role=ebgp name=EX-CDN output.filter-chain=EX-BGP-CDN_PRI_OUT .network=\
    EX-IP-OUT remote.address=172.17.10.177/30 .as=134723 router-id=10.10.10.5 \
    routing-table=main templates=EXABYTE
add as=65350 disabled=no input.filter=ggc_in-pri local.address=172.16.12.178 \
    .role=ebgp name=EX-GGC output.filter-chain=EX-BGP-OUT_PRI .network=\
    EX-IP-OUT remote.address=172.16.12.177/30 .as=134723 router-id=10.10.10.5 \
    routing-table=main templates=EXABYTE
add as=65350 disabled=no input.filter=bdix_in-pri local.address=172.16.13.178 \
    .role=ebgp name=EX-BDIX output.filter-chain=EX-BGP-OUT_PRI .network=\
    EX-IP-OUT remote.address=172.16.13.177/30 .as=134723 router-id=10.10.10.5 \
    routing-table=main templates=EXABYTE
add as=65350 disabled=no input.filter=fna_in-bkp local.address=172.18.11.178 \
    .role=ebgp name=EX-FNA-SEC output.filter-chain=EX-BGP-OUT_SEC .network=\
    EX-IP-OUT remote.address=172.18.11.177/30 .as=134723 router-id=10.10.10.5 \
    routing-table=main templates=EXABYTE
add as=65350 disabled=no input.filter=ggc_in-bkp local.address=172.18.12.178 \
    .role=ebgp name=EX-GGC-SEC output.filter-chain=EX-BGP-OUT_SEC .network=\
    EX-IP-OUT remote.address=172.18.12.177/30 .as=134723 router-id=10.10.10.5 \
    routing-table=main templates=EXABYTE
add as=65350 disabled=no local.address=172.18.13.178 .role=ebgp name=\
    EX-BDIX-SEC output.filter-chain=EX-BGP-OUT_SEC .network=EX-IP-OUT \
    remote.address=172.18.13.177/30 .as=134723 router-id=10.10.10.5 \
    routing-table=main templates=EXABYTE
add as=65350 disabled=no input.filter=cdn_in-bkp local.address=172.19.10.178 \
    .role=ebgp name=EX-CDN-SEC output.filter-chain=EX-BGP-CDN_SEC_OUT \
    .network=EX-IP-OUT remote.address=172.19.10.177/30 .as=134723 router-id=\
    10.10.10.5 routing-table=main templates=EXABYTE
add as=65350 disabled=no local.address=172.16.10.178 .role=ebgp name=EX-IIG \
    output.filter-chain=EX-BGP-OUT_PRI .network=EX-IP-OUT remote.address=\
    172.16.10.177/30 .as=134723 router-id=10.10.10.5 routing-table=main \
    templates=EXABYTE
add as=65350 disabled=no local.address=172.18.10.178 .role=ebgp name=\
    EX-IIG-SEC output.filter-chain=EX-BGP-OUT_SEC .network=EX-IP-OUT \
    remote.address=172.18.10.177/30 .as=134723 router-id=10.10.10.5 \
    routing-table=main templates=EXABYTE
/routing filter rule
add chain=MiME-BGP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 116.204.148.188/30){ accept }"
add chain=MiME-BGP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 103.136.3.220/30){ accept }"
add chain=MiME-BGP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 103.163.171.16/30) { accept }"
add chain=MiME-BGP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 103.113.148.228/30) { accept }"
add chain=MiME-BGP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 103.134.26.124/30) { accept }"
add chain=MiME-BGP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 103.93.34.152/30) { accept }"
add chain=MiME-BGP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 116.204.151.148/30) { accept }"
add chain=MiME-BGP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 103.103.32.240/30) { accept}"
add chain=MiME-BGP-OUT comment=Mime disabled=no rule="reject;"
add chain=MiME-BGP-BKP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 116.204.148.188/30) { accept}"
add chain=MiME-BGP-BKP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 103.134.26.124/30) { accept}"
add chain=MiME-BGP-BKP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 103.103.33.240/30) { accept}"
add chain=MiME-BGP-BKP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 103.93.34.152/30) { accept}"
add chain=MiME-BGP-BKP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 103.136.3.220/30) { accept}"
add chain=MiME-BGP-BKP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 103.113.148.228/30) { accept}"
add chain=MiME-BGP-BKP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 116.204.151.148/30) { accept}"
add chain=MiME-BGP-BKP-OUT comment=Mime disabled=no rule=\
    "if (dst-len==30 && dst in 103.163.171.16/30) { accept}"
add chain=MiME-BGP-BKP-OUT comment=Mime disabled=no rule="reject;"
add chain=BGP-IN_BKP disabled=no rule="if (dst-len>22 && dst-len<33 && dst in \
    0.0.0.0/0) {  set bgp-local-pref 500; accept }"
add chain=EX-BGP-OUT_PRI comment=exabyte disabled=no rule=\
    "if(dst-len==30 && dst in 103.7.121.136/30){accept}"
add chain=EX-BGP-OUT_PRI comment=exabyte disabled=no rule=\
    "if(dst-len==31 && dst in 103.7.121.142/31){accept}"
add chain=EX-BGP-OUT_PRI comment=exabyte disabled=no rule=\
    "if(dst-len==29 && dst in 103.176.3.144/29){accept}"
add chain=EX-BGP-OUT_PRI comment=exabyte disabled=no rule="if(dst-len==31 && d\
    st in 103.7.121.78/31){accept}\r\
    \nif (dst in 0.0.0.0/0 && dst-len in 0-32) { reject; }"
add chain=EX-BGP-OUT_SEC comment=exabyte disabled=no rule="if(dst-len==30 &&ds\
    t in 103.7.121.136/30){set bgp-path-prepend 2;accept}"
add chain=EX-BGP-OUT_SEC comment=exabyte disabled=no rule="if(dst-len==29 &&ds\
    t in 103.176.3.144/29){set bgp-path-prepend 2;accept}"
add chain=EX-BGP-OUT_SEC comment=exabyte disabled=no rule=\
    "if(dst-len==31 &&dst in 103.7.121.78/31){set bgp-path-prepend 2;accept}"
add chain=EX-BGP-OUT_SEC comment=exabyte disabled=no rule="if(dst-len==31 &&ds\
    t in 103.7.121.142/31){set bgp-path-prepend 2;accept}\r\
    \nif (dst in 0.0.0.0/0 && dst-len in 0-32) { reject; }"
add chain=EX-BGP-CDN_PRI_OUT comment=exabyte disabled=no rule="if (dst-len==32\
    \_&& dst in 103.7.121.140/32) { accept}\r\
    \nif(dst-len==32 && dst in 103.7.121.141/32){accept}\r\
    \nif (dst in 0.0.0.0/0 && dst-len in 0-32) { reject; }"
add chain=EX-BGP-CDN_SEC_OUT comment=exabyte disabled=no rule="if(dst-len==32 \
    &&dst in 103.7.121.140/32){set bgp-path-prepend 2;accept}\r\
    \nif(dst-len==32 &&dst in 103.7.121.141/32){set bgp-path-prepend 2;accept}\
    \r\
    \nif (dst in 0.0.0.0/0 && dst-len in 0-32) { reject; }\
    \n"
add chain=bdix_in-bkp disabled=no rule="set bgp-communities 200:200; accept;"
add chain=ggc_in-bkp disabled=no rule="set bgp-communities 100:100; accept;"
add chain=fna_in-bkp disabled=no rule="set bgp-communities 300:300; accept;"
add chain=cdn_in-bkp disabled=no rule="set bgp-communities 400:400; accept;"
add chain=bdix_in-pri disabled=no rule="set bgp-local-pref 200;set distance 10\
    ;set bgp-communities 200:200; accept;"
add chain=ggc_in-pri disabled=no rule="set bgp-local-pref 200;set distance 10;\
    set bgp-communities 100:100; accept;"
add chain=fna_in-pri disabled=no rule="set bgp-local-pref 200;set distance 10;\
    set bgp-communities 300:300; accept;"
add chain=cdn_in-pri disabled=no rule="set bgp-local-pref 200;set distance 10;\
    set bgp-communities 400:400; accept;"
add chain=CLIENT-BDIX-OUT-NEW disabled=no rule=\
    "if (bgp-communities includes 200:200) { accept; }"
add chain=CLIENT-BDIX-OUT-NEW disabled=no rule=\
    "if (dst-len==24 && dst in 10.16.100.0/24) { accept }"
add chain=CLIENT-BDIX-OUT-NEW disabled=no rule=\
    "if (dst-len==21 && dst in 10.16.96.0/21) { accept }"
add chain=CLIENT-BDIX-OUT-NEW disabled=no rule=\
    "if (dst-len==32 && dst in 10.55.55.2/32) { accept }"
add chain=CLIENT-BDIX-OUT-NEW disabled=no rule=\
    "if (dst-len==24 && dst in 172.16.50.0/24) { accept }"
add chain=CLIENT-BDIX-OUT-NEW disabled=no rule=\
    "if (dst-len==24 && dst in 172.21.22.0/24) { accept }"
add chain=CLIENT-BDIX-OUT-NEW disabled=no rule=\
    "if (dst-len==24 && dst in 15.2.2.0/24) { accept }"
add chain=CLIENT-BDIX-OUT-NEW disabled=no rule=\
    "if (dst-len==24 && dst in 15.1.1.0/24) { accept }"
add chain=CLIENT-BDIX-OUT-NEW disabled=no rule=\
    "if (dst-len==24 && dst in 15.1.2.0/24) { accept }"
add chain=CLIENT-BDIX-OUT-NEW disabled=no rule=\
    "if (dst-len==24 && dst in 15.1.3.0/24) { accept }"
add chain=CLIENT-BDIX-OUT-NEW disabled=no rule=\
    "if (dst-len==24 && dst in 15.1.4.0/24) { accept }"
add chain=CLIENT-BDIX-OUT-NEW disabled=no rule=\
    "if (dst-len==24 && dst in 15.1.5.0/24) { accept }"
add chain=CLIENT-BDIX-OUT-NEW disabled=no rule=\
    "if (dst-len==24 && dst in 15.2.2.0/24) { accept }"
add chain=CLIENT-BDIX-OUT-NEW disabled=no rule="reject;"
add chain=CLIENT-GGC-OUT-NEW disabled=no rule=\
    "if (bgp-communities includes 100:100) { accept; }"
add chain=CLIENT-GGC-OUT-NEW disabled=no rule="reject;"
add chain=CLIENT-FNA-OUT-NEW disabled=no rule=\
    "if (bgp-communities includes 300:300) { accept; }"
add chain=CLIENT-FNA-OUT-NEW disabled=no rule="reject;"
add chain=CLIENT-CDN-OUT-NEW disabled=no rule=\
    "if (bgp-communities includes 400:400) { accept; }"
add chain=CLIENT-CDN-OUT-NEW disabled=no rule="reject;"
add chain=PRI_IN disabled=no rule="set bgp-local-pref 800; accept"
add chain=PRI_in disabled=no rule=\
    "set bgp-local-pref 200;set distance 10;accept;"
add chain=bgp_in rule="set bgp-local-pref -3;accept"
/system clock
set time-zone-name=Asia/Dhaka
/system console
set [ find ] disabled=yes
/system identity
set name=Apple-Mirpur14-POP-2116
/system logging
set 0 topics=info,!firewall
add action=Log topics=firewall
add action=Log disabled=yes topics=script
/system note
set show-at-login=no
/system ntp client
set enabled=yes
/system ntp client servers
add address=1.asia.pool.ntp.org
add address=2.asia.pool.ntp.org
add address=3.asia.pool.ntp.org
/system routerboard settings
set enter-setup-on=delete-key
/system scheduler
add interval=1d name=Auto-Backup on-event="/export show-sensitive file=script2\
    116\r\
    \n/system backup save name=file2116\r\
    \n" policy=ftp,read,write,policy,test,password,sniff,sensitive,romon \
    start-date=2024-02-22 start-time=23:59:00
add interval=1d name=Auto-Email on-event="/tool e-mail send to=\"fcnet.backup@\
    gmail.com\" subject=\"configuration file ccr2116\" body=\"Backup Created O\
    n \$[/system clock get date]\" file=\"file2116,script2116\"" policy=\
    ftp,read,write,policy,test,password,sniff,sensitive,romon start-date=\
    2024-02-22 start-time=23:59:40
/system watchdog
set automatic-supout=no watchdog-timer=no
/tool e-mail
set from=fcnet.backup@gmail.com port=587 server=smtp.gmail.com tls=starttls \
    user=fcnet.backup@gmail.com
/tool graphing
set page-refresh=never
/tool graphing interface
add
