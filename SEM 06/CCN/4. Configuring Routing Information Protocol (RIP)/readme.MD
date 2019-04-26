To configure RIP protocol<br>
<br>
-----------Checking ping for router A without RIP----------------<br>
<br>
<b>A#ping 20.0.0.1</b><br>
Type escape sequence to abort.<br>
Sending 5, 100-byte ICMP Echos to 20.0.0.1, timeout is 2 seconds:<br>
%SYS-5-CONFIG_I: Configured from console by console<br>
!!!!!<br>
Success rate is 100 percent (5/5), round-trip min/avg/max = 1/8/12 ms<br>
<br>
<b>A#ping 50.0.0.1</b><br>
Type escape sequence to abort.<br>
Sending 5, 100-byte ICMP Echos to 50.0.0.1, timeout is 2 seconds:<br>
.....<br>
Success rate is 0 percent (0/5)<br>
<br>
--------------configure router A RIP protocol---------------------------<br>
<br>
<b>A(config)#router rip<br>
A(config-router)#network 10.0.0.0<br>
A(config-router)#network 20.0.0.0</b><br>
<br>

Now repeat this for all 4 routers<br>
example for B it will be 
<b>A(config)#router rip<br>
A(config-router)#network 20.0.0.0<br>
A(config-router)#network 30.0.0.0</b><br>
<br>

and so on...

-----------Checking ping and IP route for router A with RIP----------------<br>
<b>A#ping 20.0.0.1</b><br>
Type escape sequence to abort.<br>
Sending 5, 100-byte ICMP Echos to 20.0.0.1, timeout is 2 seconds:<br>
!!!!!<br>
Success rate is 100 percent (5/5), round-trip min/avg/max = 2/9/19 ms<br>
<br>
<b>A#ping 50.0.0.1</b>
Type escape sequence to abort.<br>
Sending 5, 100-byte ICMP Echos to 50.0.0.1, timeout is 2 seconds:<br>
!!!!!<br>
Success rate is 100 percent (5/5), round-trip min/avg/max = 0/2/13 ms<br>
<br>
<br>
<b>A#show ip route</b>
Codes: C - connected, S - static, I - IGRP, R - RIP, M - mobile, B - BGP<br>
       D - EIGRP, EX - EIGRP external, O - OSPF, IA - OSPF inter area<br>
       N1 - OSPF NSSA external type 1, N2 - OSPF NSSA external type 2<br>
       E1 - OSPF external type 1, E2 - OSPF external type 2, E - EGP<br>
       i - IS-IS, L1 - IS-IS level-1, L2 - IS-IS level-2, ia - IS-IS inter area<br>
       * - candidate default, U - per-user static route, o - ODR<br>
       P - periodic downloaded static route<br>
<br>
Gateway of last resort is not set<br>
<br>
C    10.0.0.0/8 is directly connected, FastEthernet0/0<br>
C    20.0.0.0/8 is directly connected, FastEthernet0/1<br>
R    30.0.0.0/8 [120/1] via 20.0.0.2, 00:00:26, FastEthernet0/1<br>
R    40.0.0.0/8 [120/2] via 20.0.0.2, 00:00:26, FastEthernet0/1<br>
R    50.0.0.0/8 [120/3] via 20.0.0.2, 00:00:26, FastEthernet0/1<br>