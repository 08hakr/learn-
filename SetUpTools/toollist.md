# 🛠️ Bug Bounty & Pentesting Tool List

A categorized list of essential tools for reconnaissance, vulnerability scanning, and exploitation in bug bounty hunting and penetration testing.

---

## 🌐 Subdomain Enumeration
- [subfinder](https://github.com/projectdiscovery/subfinder) – Passive subdomain enumerator.
- [Sublist3r](https://github.com/aboul3la/Sublist3r) – OSINT-based subdomain finder.
- [Assetfinder](https://github.com/tomnomnom/assetfinder) – Quickly find subdomains for a domain.
- [Amass](https://github.com/owasp-amass/amass) – Advanced active/passive enum and graphing.
- [crt.sh](https://crt.sh/) – Certificate transparency logs (manual).
- [dnsx](https://github.com/projectdiscovery/dnsx) – Fast DNS resolver with wildcard support.

---

## 🧪 Alive Checking & Probing
- [httpx](https://github.com/projectdiscovery/httpx) – Probes for live HTTP/HTTPS services.
- [httprobe](https://github.com/tomnomnom/httprobe) – Lightweight HTTP probing.
- [dnsx](https://github.com/projectdiscovery/dnsx) – DNS probing and filtering.

---

## 🏗️ Technology Fingerprinting
- [Wappalyzer](https://www.wappalyzer.com/) – Web tech detection (browser or CLI).
- [Webanalyze](https://github.com/rverton/webanalyze) – CLI tech stack detector.
- `httpx -tech-detect` – Built-in tech fingerprinting with httpx.

---

## 🔍 URL & Endpoint Discovery
- [waybackurls](https://github.com/tomnomnom/waybackurls) – Archived URLs from Wayback Machine.
- [gau (GetAllUrls)](https://github.com/lc/gau) – URLs from AlienVault, Wayback, etc.
- [hakrawler](https://github.com/hakluke/hakrawler) – Endpoint crawler using Go.
- [katana](https://github.com/projectdiscovery/katana) – High-performance crawler.

---

## 🎯 Vulnerability Scanning & Fuzzing
- [nuclei](https://github.com/projectdiscovery/nuclei) – Template-based fast scanner.
- [Nikto](https://github.com/sullo/nikto) – Web server vulnerability scanner.
- [ffuf](https://github.com/ffuf/ffuf) – Fuzzer for directories, parameters, etc.
- [Gobuster](https://github.com/OJ/gobuster) – Directory and DNS brute-force.
- [dirsearch](https://github.com/maurosoria/dirsearch) – Web path scanner in Python.

---

## ⚠️ Subdomain Takeover Detection
- [Subzy](https://github.com/LukaSikic/subzy) – Subdomain takeover scanner.
- [tko-subs](https://github.com/anshumanbh/tko-subs) – CNAME-based takeover checker.
- [Nuclei - Subdomain Takeover](https://github.com/projectdiscovery/nuclei-templates) – Takeover templates.

---

## 💥 XSS, Parameters, and Payload Discovery
- [GF (Grep Patterns)](https://github.com/tomnomnom/gf) – Parameter pattern grep tool.
- [ParamSpider](https://github.com/devanshbatham/ParamSpider) – Finds hidden parameters.
- [kxss](https://github.com/tomnomnom/kxss) – XSS reflection point detector.
- [dalfox](https://github.com/hahwul/dalfox) – Advanced XSS scanner.

---

## 🌐 Network Scanning & Mapping
- [nmap](https://nmap.org/) – Port scanning and service detection.
- [masscan](https://github.com/robertdavidgraham/masscan) – Fastest port scanner.
- [rustscan](https://github.com/RustScan/RustScan) – Blazing fast Nmap wrapper.

---

## 🔐 OSINT & Social Recon
- [SocialHunter](https://github.com/utkusen/socialhunter) – Social media OSINT via email/username.
- [Sherlock](https://github.com/sherlock-project/sherlock) – Find usernames across platforms.
- [Holehe](https://github.com/megadose/holehe) – Check email use on popular sites.
- [theHarvester](https://github.com/laramies/theHarvester) – OSINT email/domain/subdomain harvester.

---

## 🛡️ WAF & Security Detection
- [wafw00f](https://github.com/EnableSecurity/wafw00f) – Detect WAFs on web applications.
- [bypass-waf](https://github.com/v0re/bypass-waf) – Payload list for bypassing WAFs (manual).

---

## 🧰 Recon Automation Frameworks
- [ReconFTW](https://github.com/six2dez/reconftw) – Full automation toolkit.
- [Osmedeus](https://github.com/j3ssie/Osmedeus) – Modular automated recon engine.
- [bbht](https://github.com/nahamsec/bbht) – Bug bounty automation wrapper.

---

## 📂 Wordlists & Payloads
- [SecLists](https://github.com/danielmiessler/SecLists) – Huge collection of fuzzing and brute-force lists.
- [PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings) – Real-world attack payloads and techniques.

---

✅ **Pro Tip**: Most Go tools can be installed via:
```bash
go install github.com/<author>/<repo>@latest
