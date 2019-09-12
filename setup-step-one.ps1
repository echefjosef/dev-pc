# Install Chocolaty
"#############################"
"    Installing Chocolaty"
"#############################"
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install General Apps and Tools
"#############################"
"  Installing General Apps"
"#############################"
choco install expressvpn -y
choco install firefox -y
choco install googlechrome -y
choco install google-drive-file-stream -y
choco install slack -y
choco install 7zip -y
choco install notepadplusplus -y
choco install conemu -y
choco install far -y
choco install putty -y
choco install adobereader -y 

# Install Dev Languages and Tools
"##############################"
"Installing Languages and Tools"
"##############################"
choco install git -y
choco install git-credential-manager-for-windows -y
choco install gitkraken -y
choco install dotnetfx -y
choco install dotnet4.6.2 -y
choco install dotnetcore-sdk -y
choco install vscode -y
choco install visualstudio2019professional -y
choco install resharper -y
choco install nvm -y
choco install python -y
choco install ruby -y
choco install postman -y
choco install beyondcompare -y
#choco install adobe-creative-cloud -y
choco install inkscape -y

# Install Azure Tools
"#############################"
"   Installing Azure Tools"
"#############################"
choco install azure-cli -y
choco install azure-functions-core-tools -y
choco install microsoftazurestorageexplorer -y
choco install cloudberryexplorer.azurestorage -y
choco install sql-server-management-studio -y

# Install AWS Tools
"#############################"
"   Installing AWS Tools"
"#############################"
choco install awscli -y
choco install awstools.powershell -y
choco install cloudberryexplorer.amazons3 -y

# Install Docker Tools
"###################################"
"Installing Docker Desktop and Tools"
"###################################"
choco install docker-desktop -y
choco install kubernetes-cli -y
choco install kubernetes-helm -y


############
# Fun Stuff
############
"#############################"
"   Installing Fun Stuff"
"#############################"

# SkyFonts
choco install skyfonts -y

# Media Player
choco install mpc-hc -y

# WinAmp - Something about a Llama
choco install winamp -y

# F.lux for eye strain and sunrise/set coloring 
choco install f.lux -y

# Games and Such
choco install steam -y
choco install origin -y
choco install swtor -y
choco install vortex -y

# Add WSL - Move to End
"#############################"
"       Enabling WSL"
"#############################"
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

"#############################"
"        !ATTENTION!"
"#############################"

"Basic software install complete!  Next step, Manual Installs and Reboot:"
"Manually install ExpressVPN (if not already installed)"
"Manually install MS-Office"
"Manually install Adobe Creative Cloud (installer issues in Choco)"

"Reboot then run script #2 for WSL Distros, NVM, etc..."