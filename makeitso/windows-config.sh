# | Windows Configs ===============================================
# -----------------------------------------------------------------
# Configure Windows Subsystem for Linux.

echo "... is Windows"
echo ""

echo "Windows Configs"

# Vars ============================================================
# -----------------------------------------------------------------
WINDOWS_USERNAME="me"
WIN_HOME="/mnt/c/Users/$WINDOWS_USERNAME"

# VSCode Configs ==================================================
# -----------------------------------------------------------------
echo "--- VSCode Configs"
sudo cp "$ROOT/config/vscode/settings.json" "$WIN_HOME/AppData/Roaming/Code/User/settings.json"

# WSL Update and Clean ============================================
# -----------------------------------------------------------------
echo "--- Update and clean WSL (This wi ll take about 30s)."
sudo dpkg --configure -a
echo "--- --- Update"
sudo apt-get -y update >&-
echo "--- --- Dist Upgrade"
sudo apt-get -y dist-upgrade >&-
echo "--- --- Garbage Collection"''
sudo apt-get -y autoremove >&-  
sudo apt-get -y autoclean >&-

# WSL Installs ====================================================
# -----------------------------------------------------------------
echo "--- Install package sources." 
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - >&-

echo "--- Install WSL dependencies."
sudo apt-get -y install git zsh libpq-dev libssl-dev libfontconfig libreadline-dev zlib1g-dev libtool pkg-config build-essential autoconf automake libzmq-dev >&-

echo "--- Install Node/NPM and Nave Virtual Node."
sudo apt-get install -y nodejs >&-
npm config set prefix '~/.npm-global'

if [ ! -d ~/.npm-global ]; then
	NPM_GLOBAL_STATUS="NPM Global:$BOLD Installed $NORMAL" 
	mkdir ~/.npm-global		
else
	NPM_GLOBAL_STATUS="NPM Global: Already Installed"
fi

echo ""