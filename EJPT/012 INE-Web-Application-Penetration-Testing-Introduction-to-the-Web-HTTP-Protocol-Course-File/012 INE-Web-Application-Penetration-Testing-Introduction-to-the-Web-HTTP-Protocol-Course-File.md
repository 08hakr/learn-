# 08hakr's Short notes of eJPT
# 012 INE-Web-Application-Penetration-Testing-Introduction-to-the-Web-HTTP-Protocol-Course-File
## Common Web Application Threats
- 
## Web Application Architecture
-  
## Web Technology
- data Interchange technology: API
- data Interchange Protocol: JSON, XML, REST API, SOAP
- Security Technologies: Authentication: Cookies, Session, Role Encryption: SSL/TLS
- Eternal Technologies: CDNs, Third Party Libraries and Frameworks
- how page is loaded from the internet and from the webserver to the client browser

## HTTP Request
### Request line
- HTTP MEthod: GET POST PUT DELETE PATCH HEAD OPTIONS
- URL
- HTTP version
### Request Header
- User-Agent
- Host:
- Accept:
- Authorization:
- Cookie:
### Response Header
- Content-Type:
- Content-Length:
- Set-Cookie:
- Cache-Control:
 - Public, Private, no-cache, no-store, max-age=<seconds>
- server:
 - server info
-
### Http basics Lab
- wireshakr -i eth1
- you can export the files via exporting it from file section
- curl -v <URL> Versose Out put for the request.
- head request method means only head send back not the body of the response
 - curl -v -I <URL>
-  curl -v -X OPTIONS <URL>

- find the Directorys
 - dirb <URL>
- uploding web shell
 - /usr/share/webshells/php/
 - curl <URL>/uploads --upload-file /usr/share/webshells/php/simple-backdoor.php
 -
### Passive Crawling And Spidering with Burp suite and OWASP ZAP
- 


