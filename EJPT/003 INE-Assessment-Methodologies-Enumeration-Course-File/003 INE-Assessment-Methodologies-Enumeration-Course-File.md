# 08hakr's Short Notes eJPT
# Enumeration
## Content
+ Introduction to Enumeration
+ The Nmap Scripting Engine (NSE)
+ Service Enumeration
+ Service Enumeration with Nmap scripts

# Enumeration
- nmap -Pn -sV -O ip -oX windows_server_2012 (stored output in xml for metaspolite)

## iporting to metaspolite
- msfconsole
- db_status
- workspace
- workspace -a win2k12
- db_import /root/windows_server_2012
- hosts
- services
- workspace -a Nmap-Msf
- db_nmap -Pn -sV -O demo.ine.local
- vulns

## Port Scanning with Auxiliary Modules
- search xoda
- use <sr_no>
- set rhost <Target-1IP>
- set targeturi /
- meterpreter session:
- sysinfo
- shell
- /bin/bash -i
- ifconfig
- exit
- run autoroute -s <target-2IP>
- background
- sessions
- search portscan
- use 5 set and run
- back
- search udp_sweep
- use 5 set <Target-2IP> and run

## FTP Enumeration
- workspace -a FTP_Enum
- use portscan/tcp
- options set run
- back
- search type:auxiliary name:FTP
- use scanner/ftp/ftp_version
- options set run
- search ftp
- use /ftp/ftp_login
- set user_file /usr/share/metasploite-framework/data/wordlists/common_users.txt and password to unix_passwords.txt

## SMB Enumeration 
- workspace -a smb_enum
- setg rhost <target-ip>
- search type:auxiliary name:smb
- use smb_version
- set and rsun
- search enumusers use set run
- search smb_login
- use set run
- smbclient -L \\\\<target-ip>\\ -U admin
- smbclient \\\\<target-ip>\\<sharename> -U admin
- get

## Web Server Enumeration
- Workspace -a web_enum
- search type:auxiliary name:http
- search type:auxiliary name:http_header
- robots.txt
- visit each path
- search dir_scanner
- use set run
- search files_dir
- use set run
- search http_login
- set Auth_URI /secure/
- unset userpass_file 
- use set run
- set /usr/file/metasploit-framework/data/wordlists/namelist.txt and /unix_passwords.txt
- search apache_userdir_enum
- set common_users.txt
```
auxiliary/scanner/http/apache_userdir_enum
auxiliary/scanner/http/brute_dirs
auxiliary/scanner/http/dir_scanner
auxiliary/scanner/http/dir_listing
auxiliary/scanner/http/http_put
auxiliary/scanner/http/files_dir
auxiliary/scanner/http/http_login
auxiliary/scanner/http/http_header
auxiliary/scanner/http/http_version
auxiliary/scanner/http/robots_txt
```

## MySQL Enumeration
- workspace -a mysql_enum
- search type:auxiliary name:mysql
- use set run
- search type:auxiliary name:mysql_login
- set username root set pass_file unix_passwords.txt
- search mysql_enum
- use set run
- search mysql_sql
- use set run
- search mysql_schema
- mysql -h <targetIp> -U root -P

## SSH Enumeration
- workspace -a ssh_enum
- search type:auxiliary name:ssh
- ssh_login
- use set run 
- ssh_enumusers

## SMTP Enumeration
- workspace -a smtp_enum
- search type:auxiliary name:smtp
- use set run
Step 1: Open the lab link to access the Kali machine.

Content Image

Step 2: What is the SMTP server name and banner.

Answer:

Server: Postfix
Banner: openmailbox.xyz ESMTP Postfix: Welcome to our mail server.
Command:

nmap -sV -script banner demo.ine.local
Content Image

Step 3: Connect to SMTP service using netcat and retrieve the hostname of the server (domain name).

Answer:

openmailbox.xyz
Command:

nc demo.ine.local 25
Content Image

Step 4: Does user "admin" exist on the server machine? Connect to SMTP service using netcat and check manually.

Answer:

Yes
Command:

VRFY admin@openmailbox.xyz
Content Image

Step 5: Does user "commander" exist on the server machine? Connect to SMTP service using netcat and check manually.

Answer:

No
Command:

VRFY commander@openmailbox.xyz
Content Image

Step 6: What commands can be used to check the supported commands/capabilities? Connect to SMTP service using telnet and check.

Commands:

telnet demo.ine.local 25
HELO attacker.xyz
EHLO attacker.xyz
Content Image

Step 7: How many of the common usernames present in the dictionary /usr/share/commix/src/txt/usernames.txt exist on the server. Use smtp-user-enum tool for this task.

Answer:

8
Command:

smtp-user-enum -U /usr/share/commix/src/txt/usernames.txt -t demo.ine.local
Content Image

Step 8: How many common usernames present in the dictionary /usr/share/metasploit-framework/data/wordlists/unix_users.txt exist on the server. Use suitable metasploit module for this task.

Answer:

20
Commands:

msfconsole -q
use auxiliary/scanner/smtp/smtp_enum
set RHOSTS demo.ine.local
exploit
Content Image

Step 9: Connect to SMTP service using telnet and send a fake mail to root user.

Commands:

telnet demo.ine.local 25
HELO attacker.xyz
mail from: admin@attacker.xyz
rcpt to:root@openmailbox.xyz
data
Subject: Hi Root
Hello,
This is a fake mail sent using telnet command.
From,
Admin
.
Note: There is a dot(.) in the last line which indicates the termination of data.

Content Image

Step 10: Send a fake mail to root user using sendemail command.

Command:

sendemail -f admin@attacker.xyz -t root@openmailbox.xyz -s demo.ine.local -u Fakemail -m "Hi root, a fake from admin" -o tls=no
Content Image

Conclusion
In this lab, we looked at the basics of Postfix SMTP server reconnaissance.

References
Postfix
smtp-user-enum
sendmail
Metasploit Module: SMTP User Enumeration Utility


accesscontrol 
bussiness logic
6



