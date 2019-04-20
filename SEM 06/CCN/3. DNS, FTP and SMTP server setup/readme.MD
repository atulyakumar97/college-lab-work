How to setup DNS -->

Server Settings

Desktop > IP configuration > 
IP - 10.0.0.4
Subnet - 255.0.0.0
Default gateway - 10.0.0.1
DNS Server - 10.0.0.4

Services> change index.html content
Services>DNS>

dns service - on
type
name djsce.in 
address 10.0.0.4 
then click add 

Now set DNS ip in all PCs

FTP


Packet Tracer PC Command Line 1.0
PC>ftp
Packet Tracer PC Ftp

Usage: ftp target

PC>ftp djsce.in
Trying to connect...djsce.in
Connected to djsce.in
220- Welcome to PT Ftp server
Username:password
331- Username ok, need password
Password:
230- Logged in
(passive mode On)
ftp>get asa842-k8.bin

Reading file asa842-k8.bin from djsce.in: 
File transfer in progress...

[Transfer complete - 5571584 bytes]

5571584 bytes copied in 7.883 secs (161945 bytes/sec)
ftp>


SMTP
Go to Server > Services > 
Domain name - gmail.com > click set
set user and password

Go to any pc
configure mail >
