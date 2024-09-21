## 08hakr's Notes of eJPT
# FootPrinting & Scanning Course
## content:
- Introduction to network Mapping
- Networking Fundamentals
- Host Discovery with nmap
- Port Scanning With Nmap
- Hist Fingerprinting
- Introduction to nmao Scripting Engine (NSE  )
- Firewall Detection & evasion with nmap 
- Nmap Scan Timing & Performance 
- Nmap Output & Verbosity

# PreRequisites
- Basic familiarity with windows and linux
- Knowledge of common TCP/UDP ports and Service.

# alexis Ahmed
## Networking Fundamentals  
## Host Discovery Technique:
- Ping Sweep
 - pros: widely cons: 
- ARP Scanning
- TCP Syn Ping stealth scan
- UDP Ping (used when target Donot respond to ICMP OR TCP probe)
- TCP ACK ping
- SYN-ACK ping

## Ping Sweeps
- *nmap -sn* <target-ip>
- nmap -sn --send-ip
- *nmap -sn* -PS80,3389 <target-ip> (syn-ping)
- nmap -sn -PA <Target-ip> (Ack-Ping)

## Host Discovery
- nmap -sn -PE (host discovery ICMP echo request) if doesn't work add --send-ip
- fast scan namp -sn -PS21,22,25,80,445,3389,8080 -
PU137,138 -T4 <Target-Ip>

## Port Scanning
- nmap -Pn <target-ip> (top 1000)
- nmap -Pn -F <target-ip> (top 100)
- nmap -p80,445,3389,8080, <target-ip> 8080 filtered 8080 means system is behind firewall  only in windows
- nmap -Pn -p- -T4 <target-ip> (all 65535 ports)
- nmap -Pn -sS -F <Target-Ip> (stealth Syn Scan)
- nmap -Pn -sT <target-ip> (TCP connect scan)
- nmap -Pn -sU <target-ip> (UDP port scan) (53, 137,138,139)

## service Version & OS detection
- nmap -sn <target-ip>/24
- nmap -sS -p- <target-ip>
- nmap -sS -p- -sV -T4 <target-ip>
- nmap -sS -p- -sV -O -T4 <target-ip>
- nmap -sS -p- -sV -O --osscan-guess -T4 <target-ip> (Aggressive OS guesses)
- nmap -sS -p- -sV --version-intensity 8 -O --osscan-guess -T4 <target-ip> (version intensity detection)
## Nmap Scripting Engine 
- (Tasks: automate: port Scanning, Service version detection, Vulnerability Scanning, Exploitation, BruteForcing)
- Path: usr/share/nmap/scripts (.nse)
- nmap -sS -p- -sV -T4 -sC <target-ip> (default script scan)
- nmap -sS -p- -sV -T4 --script=mongodb-info <target-ip>
- nmap --script-help=<scriptname>
-  -sC -sV -O all can be combine in one with -A

## firewall and IDS detection
- if ports are shown filtered then its firewall
- -sA ack scan to find firewall
- nmap -Pn -sS -sV -F -f <target-ip> (packet Fragmentation technique)
- nmap -Pn -sS -sV -F -f --mtu 8 <target-ip> -mtu 8 bytes
- nmap -Pn -sS -sV -F -f --data-length 200 -D <decoySpoof-ip2> <target-ip>
- -g 53 option to spoof port it shows dns server making request

## Optimizing Nmap Scans
- nmap -Pn -sS -p -T0-TO--T5 <target-ip> timing template
- --scan-delay 5s
- --host-timeout 5s 

## Nmap Output Formats
- -oN normal format
- -oX xml format can be import to metaspolite
- service postgresql start
- msfconsole
- workspace -h
- workspace -a pentest_1
- workspace pentest_1
- db_status
- db_import nmap_xml.xml
- hosts 
- services
- loot to show credentials
- creds
- db_nmap -Pn -sS -sV -o
- db_autopan
- analyze
- vulns


## Conclusion

