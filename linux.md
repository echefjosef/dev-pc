# dev-linux

Developer setup scripts and steps for Linux

## Initial Bash setup

Update Apt - BASH: ```sudo apt-get update```
Upgrade Apt packages - BASH: ```sudo apt-get upgrade```

## Setup

Kali for Security

Fedora for Desktop

### __Mint OS Desktop__

Create your themes directory and add the Sierra theme to it:
```bash
mkdir $HOME/.themes

cd $HOME/.themes

wget https://github.com/B00merang-Project/macOS-Sierra/archive/master.zip

unzip master.zip
```

Install the Numix Circle Icon pack and apply the fix for Gnome...

```bash
sudo apt install numix-icon-theme-circle

sudo sh -c "curl https://raw.githubusercontent.com/Foggalong/hardcode-fixer/master/fix.sh | bash"

curl https://raw.githubusercontent.com/zangent/GnomeYosemiteIcons/master/download_from_github.sh | sh
```

If you are minung the Numix icon package from your repository, use the following ot add it first:

```bash
sudo add-apt-repository ppa:numix/ppa && sudo apt-get update
```

Add Plank for your launcher:

```bash
sudo apt install plank
```

Use Alt+F2 and run 

```bash
plank --preferences
```

Set the Theme of Plank to Transparent, Position bottom, Icon size 38, icon zoom at 200.

Open "System Settings" and go to Startup/Autostart, and Add a program.  You should be able to browse the list and find Plank.

Go to the Themes section of System Settings and set the following:
- Set Windows Border to use macOS-master
- Set Icons to use GnomeYosemiteIcons-master
- Set Controls to use macOS-master
- Set Mouse Pointer to use DMZ-White
- Set Desktop to use macOS-master

### __Install ZSH and Oh My ZSH__

Install ZSH - BASH: ```sudo apt-get install zsh```
Install OhMyZSH (https://ohmyz.sh/)  BASH:  ```sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"```

- Update Bash shell to use DejaVu Sans Powerline patched font (Windows Ubuntu shell, Properties, Font)

BASH: Use nano to edit ~/.zshrc, change ZSH_THEME to "agnoster"

### __Configure Git and SSL__

[Use this guide to setup git and SSL](ssl-git.md)

### __Customizations__

BASH: Add Reload Alias to .zshrc ```alias reload="source ~/.zshrc"```

BASH: Add Dev Alias to .zshrc ```alias dev="cd /mnt/c/dev"```

## Languages

### __Node and NVM__

[NVM/Node for Linux](https://github.com/creationix/nvm)

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
```

Install Node/npm common versions (```nvm install v12.19.0```  && ```nvm install v14.15.0```)

### __Python__

Install pre-reqs and updated source (deadsnakes)

```bash
sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt update
```

Install Phython 3.8 and verify the install

```bash
sudo apt install python3.8

python ––version
```

### __Ruby__

Install the GPG Key and RVM management tool

```bash
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

curl -sSL https://get.rvm.io | bash -s stable
```

Use RVM to list current versions and install latest version

```bash
rvm list known
rvm install 1.9.3 

rb --version ????????????????
```

## Apps

### __flatpak__

Install FlatPak

```bash
sudo apt install flatpak
```

If flatpak is not in the repository, use:

```bash
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt update
sudo apt install flatpak
```


### __.Net Core__

```bash
wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

sudo dpkg -i packages-microsoft-prod.deb
```

### __VSCode__

```bash
curl -o ~/Downloads/vscode.deb https://az764295.vo.msecnd.net/stable/d2e414d9e4239a252d1ab117bd7067f125afd80a/code_1.50.1-1602600906_amd64.deb

sudo dpkg -i ~/Downloads/vscode.deb
sudo apt install -f
```

### __Firefox__

```bash
flatpak install flathub org.mozilla.firefox
flatpak run org.mozilla.firefox
```

### __Slack__

```bash
flatpak install flathub com.slack.Slack
flatpak run com.slack.Slack
```

### __Email__

```bash
flatpak install flathub org.mozilla.Thunderbird
flatpak run org.mozilla.Thunderbird
```

### __Discord__

```bash
flatpak install flathub com.discordapp.Discord
flatpak run com.discordapp.Discord
```

### __Zoom__

```bash
flatpak install flathub us.zoom.Zoom
flatpak run us.zoom.Zoom
```

### __VLC__

```bash
flatpak install flathub org.videolan.VLC
flatpak run org.videolan.VLC
```

### __Audacity__

```bash
flatpak install flathub org.audacityteam.Audacity
flatpak run org.audacityteam.Audacity
```

### __Google Drive__

```bash
flatpak install flathub io.github.liberodark.OpenDrive
flatpak run io.github.liberodark.OpenDrive
```

