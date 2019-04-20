Task 1 (Standard access-lists)
Our task is to give access to 10.0.0.2 from gaining access on 20.0.0.0 network. Other computer from the network of 10.0.0.0 must not be able to connect with the network of 20.0.0.0.
=>
Router(config)#access-list 1 permit host 10.0.0.2
Router(config)#access-list 1 deny any
Router(config)#interface fa 0/1
Router(config-if)#ip access-group 1 out
Router(config-if)#exit
Router(config)#exit
Router#
%SYS-5-CONFIG_I: Configured from console by console

Router#show ip access-lists
Standard IP access list 1
10 permit host 10.0.0.2
20 deny any

(Router(config-if)#no ip access-group 1 out)
Task 2 (Standard access list)
Our task is to block 10.0.0.2 from gaining access on 20.0.0.0. Other computer from the network of 10.0.0.0 must be able to connect with the network of 20.0.0.0.
=>
Router(config)#access-list 2 deny host 10.0.0.2
Router(config)#access-list 2 permit any
Router(config)#interface fa 0/1
Router(config-if)#ip access-group 2 out
Router(config-if)#exit
Router(config)#exit
Router#
%SYS-5-CONFIG_I: Configured from console by console

Router#show ip access-lists
Standard IP access list 1
10 permit host 10.0.0.2
20 deny any
Standard IP access list 2
10 deny host 10.0.0.2
20 permit any

(Router(config-if)#no ip access-group 1 out)

Task 3 (Extended ACL)
Our task is to allow HTTP access (server is 20.0.0.2) to 10.0.0.2. All other hosts must not be able to communicate with web server 20.0.0.2.
=>
Router(config)#access-list 101 permit tcp any host 10.0.0.2 host 20.0.0.2 eq 80
Router(config)#access-list 101 deny tcp any host 20.0.0.2 eq 80
Router(config)#interface fa0/1
Router(config-if)#ip access-group 101 out
Router(config-if)#exit
Router(config)#exit
Router#
%SYS-5-CONFIG_I: Configured from console by console

Router#show access-lists
Standard IP access list 1
10 permit host 10.0.0.2 (3 match(es))
20 deny any (2 match(es))
Standard IP access list 2
10 deny host 10.0.0.2 (9 match(es))
20 permit any (10 match(es))
Extended IP access list 101
10 permit tcp host 10.0.0.2 host 20.0.0.2 eq www
20 deny tcp any host 20.0.0.2 eq www
  

(Router(config-if)#no ip access-group 101 out)
Task 4 (Extended ACL)
Our task is to deny FTP access (server is 20.0.0.2) to 10.0.0.2. All other hosts must be able to communicate with ftp server 20.0.0.2.
=>
Router(config)#access-list 102 deny tcp host 10.0.0.2 host 20.0.0.2 eq 21
Router(config)#access-list 102 permit tcp any host 20.0.0.2 eq 21
Router(config)#access-list 102 permit ip any any
Router(config)#interface fa 0/1
Router(config-if)#ip access-group 102 out
Router(config-if)#exit
Router(config)#exit
Router#
%SYS-5-CONFIG_I: Configured from console by console

Router#show ip access-lists
Extended IP access list 101
10 permit tcp host 10.0.0.2 host 20.0.0.2 eq www (5 match(es))
20 deny tcp any host 20.0.0.2 eq www (50 match(es))
Extended IP access list 102
10 deny tcp host 10.0.0.2 host 20.0.0.2 eq ftp
20 permit tcp any host 20.0.0.2 eq ftp
30 permit ip any any
  




(Router(config-if)#no ip access-group 102 out)


Task 5 (Extended ACL)
Our task is to deny  SMTP access (server is 20.0.0.2) to 10.0.0.2. All other hosts must be able to communicate with smtp server 20.0.0.2.
Router(config)#access-list 103 deny tcp host 10.0.0.2 host 20.0.0.2 eq 25
Router(config)#access-list 103 permit tcp any host 20.0.0.2 eq 25
Router(config)#access-list 103 permit ip any any
Router(config)#interface fa 0/1
Router(config-if)#ip access-group 103 out
Router(config-if)#exit
Router(config)#exit

Router#show ip access-lists
Extended IP access list 103
10 deny tcp host 10.0.0.2 host 20.0.0.2 eq smtp
20 permit tcp any host 20.0.0.2 eq smtp
30 permit ip any any
      
