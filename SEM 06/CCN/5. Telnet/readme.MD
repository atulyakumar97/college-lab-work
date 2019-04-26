Basically using pc0 to change router 2's hostname in telnet->

After setting up connection with IPs configured for all pcs and routers<br>
<br>
<br>
router 2 settings

router(config)#int fa0/0<br>
router(config-if)#line vty 0<br>
router(config-line)#password password<br>
router(config-line)#exit<br>
router(config)#enable password password<br>
router(config)#exit<br>
<br>
<br>
then open pc0's cmd and follow output.png<br>