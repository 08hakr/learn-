knoxx
# Information Gathering:
- Passive
- Active


# Passive Information Gathering
## Pentesting Notes:
- host: DNS lookup 
- robots.txt
- sitemap.xml:
 - author-sitemap.xml
 - page-sitemap.xml
 - category-sitemap.xml
 - post-sitemap.xml
- addon: 
 - builtwith. 
 - wappalyzer
 - whcatweb (tool)
- download whole site:
 - httrack.com (tool webhttrack)

## Website Foot Printing: (Passive)
- whois enimeration:
- Netcraft (whois, SSL, TLS, whatweb, Nameservers)

## DNS Recon
- dnsrecon
- dnsdumpster.com

## WAF (Web Application Firewall)
- WAFWOOF to detect tool called can be used

## Subdomains
- sublist3r
-  
## Google Dorking
- site:, wildcard(*,-,+,'')
- inurl:
- filetype:
- intitle:
- cache:
- exploiteDB google Hacking DataBase

## Email Harvesting
- theHarvester

## Leaked Password Databases
- haveibeempwned

# Active Recon:
## DNS  
- zonetrasfer.com
- dnsdumpster.com
- dnsrecon (tool)
- dnsenum +
- dig axfr @NS DOmain
-  fierce -dns domain

## Host Discovery
- namp
 - nmap -sn ip
- netdiscover -i eth0 -r 192.168.2.0/24 (arp request)

## Port Scanning
- nmap:
 - windows block Ping (so use -Pn) 
 - -F fast, -sU(udp), -v verbous, -sV service version Detection, -O os Detection, -sC nmap Default Script Scan, -A agressive Scan (-sV -O -sC), -T0 to -T5 higher is faster, -oN scan.txt noramal output, -oX (xml Framework like Metaspolite)
 
# Learning Objectives:
- Students will learn about the difference between active and passive information gathering.
- Students will learn how to perform passive information gathering by leveraging various tools and resources.
- Students will perform active information gathering.
