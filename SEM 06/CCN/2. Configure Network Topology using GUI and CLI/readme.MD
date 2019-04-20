--- System Configuration Dialog ---

Continue with configuration dialog? [yes/no]: n


Press RETURN to get started!

<b>Router>enable<br>
Router#config t<br></b>
Enter configuration commands, one per line. End with CNTL/Z.<br>
<b>Router(config)#hostname myrouter<br>
myrouter(config)#int fa0/0<br>
myrouter(config-if)#ip address 10.0.0.1 255.0.0.0<br>
myrouter(config-if)#no shutdown<br>
</b>
myrouter(config-if)#<br>
%LINK-5-CHANGED: Interface FastEthernet0/0, changed state to up<br>
<br>
%LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/0, changed state to up<br>
<b>exit<br>
myrouter(config)#int fa0/1<br>
myrouter(config-if)#ip address 192.168.0.1 255.255.255.0<br>
myrouter(config-if)#no shutdown<br>
<br></b>
myrouter(config-if)#<br>
%LINK-5-CHANGED: Interface FastEthernet0/1, changed state to up<br>
<br>
%LINEPROTO-5-UPDOWN: Line protocol on Interface FastEthernet0/1, changed state to up<br>
<b>exit<br>
<br>
myrouter(config)#exit<br></b>
myrouter#<br>
%SYS-5-CONFIG_I: Configured from console by console<br>
<b>enable<br>
<br>
myrouter#show interface<br></b>
FastEthernet0/0 is up, line protocol is up (connected)<br>
Hardware is Lance, address is 0060.4704.0101 (bia 0060.4704.0101)<br>
Internet address is 10.0.0.1/8<br>
MTU 1500 bytes, BW 100000 Kbit, DLY 100 usec,<br>
reliability 255/255, txload 1/255, rxload 1/255<br>
Encapsulation ARPA, loopback not set<br>
ARP type: ARPA, ARP Timeout 04:00:00, <br>
Last input 00:00:08, output 00:00:05, output hang never<br>
Last clearing of "show interface" counters never<br>
Input queue: 0/75/0 (size/max/drops); Total output drops: 0<br>
Queueing strategy: fifo<br>
Output queue :0/40 (size/max)<br>
5 minute input rate 0 bits/sec, 0 packets/sec<br>
5 minute output rate 0 bits/sec, 0 packets/sec<br>
0 packets input, 0 bytes, 0 no buffer<br>
Received 0 broadcasts, 0 runts, 0 giants, 0 throttles<br>
0 input errors, 0 CRC, 0 frame, 0 overrun, 0 ignored, 0 abort<br>
0 input packets with dribble condition detected<br>
0 packets output, 0 bytes, 0 underruns<br>
0 output errors, 0 collisions, 1 interface resets<br>
0 babbles, 0 late collision, 0 deferred<br>
0 lost carrier, 0 no carrier<br>
0 output buffer failures, 0 output buffers swapped out<br>
FastEthernet0/1 is up, line protocol is up (connected)<br>
Hardware is Lance, address is 0060.4704.0102 (bia 0060.4704.0102)<br>
Internet address is 192.168.0.1/24<br>
MTU 1500 bytes, BW 100000 Kbit, DLY 100 usec,<br>
reliability 255/255, txload 1/255, rxload 1/255<br>
Encapsulation ARPA, loopback not set<br>
ARP type: ARPA, ARP Timeout 04:00:00, <br>
Last input 00:00:08, output 00:00:05, output hang never<br>
Last clearing of "show interface" counters never<br>
Input queue: 0/75/0 (size/max/drops); Total output drops: 0<br>
Queueing strategy: fifo<br>
Output queue :0/40 (size/max)<br>
5 minute input rate 0 bits/sec, 0 packets/sec<br>
5 minute output rate 0 bits/sec, 0 packets/sec<br>
0 packets input, 0 bytes, 0 no buffer<br>
Received 0 broadcasts, 0 runts, 0 giants, 0 throttles<br>
0 input errors, 0 CRC, 0 frame, 0 overrun, 0 ignored, 0 abort<br>
0 input packets with dribble condition detected<br>
0 packets output, 0 bytes, 0 underruns<br>
0 output errors, 0 collisions, 1 interface resets<br>
0 babbles, 0 late collision, 0 deferred<br>
0 lost carrier, 0 no carrier<br>
0 output buffer failures, 0 output buffers swapped out<br>
Vlan1 is administratively down, line protocol is down<br>
Hardware is CPU Interface, address is 0001.c7b8.ec6b (bia 0001.c7b8.ec6b)<br>
MTU 1500 bytes, BW 100000 Kbit, DLY 1000000 usec,<br>
reliability 255/255, txload 1/255, rxload 1/255<br>
Encapsulation ARPA, loopback not set<br>
ARP type: ARPA, ARP Timeout 04:00:00<br>
Last input 21:40:21, output never, output hang never<br>
Last clearing of "show interface" counters never<br>
Input queue: 0/75/0/0 (size/max/drops/flushes); Total output drops: 0<br>
Queueing strategy: fifo<br>
Output queue: 0/40 (size/max)<br>
5 minute input rate 0 bits/sec, 0 packets/sec<br>
5 minute output rate 0 bits/sec, 0 packets/sec<br>
1682 packets input, 530955 bytes, 0 no buffer<br>
Received 0 broadcasts (0 IP multicast)<br>
0 runts, 0 giants, 0 throttles<br>
0 input errors, 0 CRC, 0 frame, 0 overrun, 0 ignored<br>
563859 packets output, 0 bytes, 0 underruns<br>
0 output errors, 23 interface resets<br>
0 output buffer failures, 0 output buffers swapped out<br>
<br>
<b>myrouter#show ip route<br></b>
Codes: C - connected, S - static, I - IGRP, R - RIP, M - mobile, B - BGP<br>
D - EIGRP, EX - EIGRP external, O - OSPF, IA - OSPF inter area<br>
N1 - OSPF NSSA external type 1, N2 - OSPF NSSA external type 2<br>
E1 - OSPF external type 1, E2 - OSPF external type 2, E - EGP<br>
i - IS-IS, L1 - IS-IS level-1, L2 - IS-IS level-2, ia - IS-IS inter area<br>
\* - candidate default, U - per-user static route, o - ODR<br>
P - periodic downloaded static route<br>
<br>
Gateway of last resort is not set<br>
<br>
C 10.0.0.0/8 is directly connected, FastEthernet0/0<br>
C 192.168.0.0/24 is directly connected, FastEthernet0/1<br><br>
<b>myrouter#ping 10.0.0.3<br></b>

Type escape sequence to abort.<br>
Sending 5, 100-byte ICMP Echos to 10.0.0.3, timeout is 2 seconds:<br>
!!!!!<br>
Success rate is 100 percent (5/5), round-trip min/avg/max = 0/1/2 ms<br>
