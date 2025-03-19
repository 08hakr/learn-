# API Reconnaissance
## Passive 
- Google Dorking
  - main search bar
  -  intitle:"api" site:"coinbase.com"
  - inurl:"/api/v1" site:"microsoft.com"
  - intitle:json site:ebay.com
  - github for search more dorks of the google api search
- Git Dorking as well
  - direct search on the github
  - comments as well experimental.
  - keywords: key, api key, company name,
  - extension:json nasa
  - common headers: "authorization:Bearer"
  - filename:swagger.json, swagger
- SHodan:
  - header, application json, headers,
  - company name, "wp-json"
  - header: "content-type: application/json", 
  - ""
-  Truffle Hog
  - Git then Explore
- Direct search for the api documnetaion of the api technology is used OR the api used.
- WayBackMachine
  - back in time and see the endpoints and view in current domain
  - 


## Active
- amass enum -list 
- amass enum -active -d domain
- gobuter dir -u domain -w /usr/share/wordlsits/dirbuster/directory-list-2.3 --wildcard -b 200
- kite runner
- copy the api request as a curl and import it into postman
