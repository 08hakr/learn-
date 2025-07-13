#!/bin/bashset -e
TOOLS_DIR="$HOME/tools"
mkdir -p "$TOOLS_DIR"
cd "$TOOLS_DIR"

echo "[+] Updating system..."
sudo apt update && sudo apt install -y golang-go python3 python3-pip git curl wget unzip nmap chromium-driver build-essential

# Set up Go path
export GOROOT=/usr/lib/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

echo "[+] Installing Go-based tools..."

# subfinder
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

# httpx
go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

# dnsx
go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest

# nuclei
go install -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

# katana
go install -v github.com/projectdiscovery/katana/cmd/katana@latest

# gau
go install -v github.com/lc/gau/v2/cmd/gau@latest

# gf
go install -v github.com/tomnomnom/gf@latest

# assetfinder
go install -v github.com/tomnomnom/assetfinder@latest

# hakrawler
go install -v github.com/hakluke/hakrawler@latest

# subzy
# go install -v github.com/LukaSikic/subzy@latest

# kxss
go install -v github.com/Emoe/kxss@latest

# ffuf
go install -v github.com/ffuf/ffuf/v2@latest

# waybackurls
go install -v github.com/tomnomnom/waybackurls@latest

# dalfox
go install -v github.com/hahwul/dalfox/v2@latest

echo "[+] Installing Python tools..."

# sublist3r
git clone https://github.com/aboul3la/Sublist3r.git && cd Sublist3r
pip install -r requirements.txt
sudo ln -s $(pwd)/sublist3r.py /usr/local/bin/sublist3r
cd ..

# dirsearch
git clone https://github.com/maurosoria/dirsearch.git

# Social Hunter
git clone https://github.com/utkusen/socialhunter.git

# ParamSpider
git clone https://github.com/devanshbatham/ParamSpider.git
pip install -r ParamSpider/requirements.txt

# theHarvester
git clone https://github.com/laramies/theHarvester.git && cd theHarvester
# pip install -r requirements/base.txt
cd ..

# holehe
git clone https://github.com/megadose/holehe.git 
pip install -r requirements.txt
python3 holehe/setup.py install

# sherlock
git clone https://github.com/sherlock-project/sherlock.git # && cd sherlock
# pip install -r requirements.txt
# cd ..

echo "[+] Installing Nikto..."
git clone https://github.com/sullo/nikto.git

echo "[+] Installing WafW00f..."
pip install wafw00f

echo "[+] Installing Wordlists..."
git clone https://github.com/danielmiessler/SecLists.git

echo "[+] Installing PayloadsAllTheThings..."
git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git

echo "[+] Done. All tools installed in $TOOLS_DIR"
echo "✅ Add this to your ~/.bashrc or ~/.zshrc:"
echo 'export PATH=$HOME/go/bin:$PATH'
