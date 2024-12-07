# 08hakr's Short notes of eJPT
# 011 host-network-penetration-testing-social-engineering
## Important Points for Social Engineering
### Understating Peoples Psychology and Trying to Social Interaction OR Parts of Psychology you can take Advantage
- The Desire To be Helpful
- The Tendency to Trust People
- The Desire For Approval
- The Fear of Getting in Trouble
- Avoiding Conflict OR Arguments
### Pretexting
- github.com/L4bF0x/PhishingPretexts
### Phishing With GOphish
- getgophis.com
- configuration:
 - remove the external resources links from the pages Login.html
 - if you have domain buy then open config.json and in admin_Server{listen_url:domain.com}
 - config TLS if you wish
 - COnfig TLS set false FILE:config.json
- Name: Red team
- Interface: SMTP
- FROM: info <support@demo.ine.local>
- Host: localhost:25
- Username: red@demo.ine.local
- Passsword: password
- true ignore cerft
- vic tim victim@demo.ine.local
- send save
# Landing Page
- name: INE Password
- http://localhost:8080
- true true same as above
# Email Template
- Name: INE Password Reset
- import RAW from Desktop
# Users & Groups
- New Group
- Name: INE Employees
- Bulk Import Users: From Desktop target.csv
## New Campaign
- Name: INE Password Reset
- Select option oen by one
- URL: http://localhost
- date and group
-
