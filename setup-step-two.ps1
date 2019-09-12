"#############################"
"   Dev PC Setup script 2"
"#############################"

#WSL Distros
"#############################"
"  Downloading WSL Distros"
"#############################"
New-Item -ItemType Directory -Force -Path c:\distro
Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1804 -OutFile c:\distro\Ubuntu1804.appx -UseBasicParsing
Invoke-WebRequest -Uri https://github.com/WhitewaterFoundry/Fedora-Remix-for-WSL/releases/download/1.30.1/DistroLauncher-Appx_1.30.1.0_x64.appx -OutFile c:\distro\FedoraRemix.appx -UseBasicParsing

"#############################"
"  Installing WSL Distros"
"#############################"
Add-AppxPackage c:\distro\Ubuntu1804.appx
Add-AppxPackage c:\distro\FedoraRemix.appx

# NVM
"#############################"
"Installing Node v8, v10, v12"
"#############################"
nvm install 10.16.3
nvm install 8.16.1
nvm install 12.10.0

# Git Cred Manager for Windows
"#############################"
"Add Git Cred Mgr for Windows"
"#############################"
git config --global credential.helper manager

# Pull down Powerline Fonts
"#############################"
"Add Powerline fonts for ZSH"
"#############################"
git clone https://github.com/powerline/fonts.git
./fonts/install.ps1

# VSCode config
"#############################"
"Installing VSCode Extensions"
"#############################"
choco install vscode-powershell -y
choco install vscode-csharp -y
choco install vscode-icons -y
choco install vscode-gitlens -y
choco install vscode-docker  -y
choco install vscode-mssql  -y
choco install vscode-markdownlint  -y
choco install vscode-eslint  -y
choco install vscode-vsliveshare  -y
choco install vscode-codespellchecker  -y
choco install vscode-yaml  -y

# Next Steps - Bash script for Distros

"#############################"
"         Next Steps"
"#############################"

"Check Readme for Final setup for VS/VSCode"
"Configure Bash in WSL Distro(s)"
