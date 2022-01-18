# dev-pc

Developer setup scripts and steps for PC

## Setup

### Install Script One

- Manually install VPN (https://download.expressvpn.xyz/clients/windows/expressvpn_7.2.3.9028.exe)
- Run setup-step-one.ps1 from powershell as admin

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; ./setup-step-one.ps1
```

- Manually install MS Office
- Manually install Adboe Cloud (Issues with Choco Install currently)
  - https://creativecloud.adobe.com/apps/all/desktop
- Reboot (required for a couple of apps and WSL)
- Run setup-step-two.ps1 from powershell as admin

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; ./setup-step-two.ps1
```

### Post Script Two steps

#### Base WSL Install

- Ubuntu Distro 20.04 - https://aka.ms/wslubuntu2004
- Ubuntu Distro 18.04 - https://aka.ms/wsl-ubuntu-1804
- Debian Distro - https://aka.ms/wsl-debian-gnulinux
- Whitewater Foundry Fedora Reloaded - https://github.com/WhitewaterFoundry/WSLFedoraRemix/releases/

#### Initial Updates

Update Apt - BASH: ```sudo apt-get update```
Upgrade Apt packages - BASH: ```sudo apt-get upgrade```

#### Install ZSH and Oh My ZSH

Install ZSH

```bash
sudo apt-get install zsh
```

Install OhMyZSH (https://ohmyz.sh/)

```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

- Update Bash shell to use DejaVu Sans Powerline patched font (Windows Ubuntu shell, Properties, Font)

Use nano to edit ~/.zshrc, change ZSH_THEME to "agnoster"

Add Reload Alias to .zshrc

```bash
alias reload="source ~/.zshrc"
```

Add Dev Alias to .zshrc
```bash
alias dev="cd /mnt/c/dev"
```

#### WSL Dev Tools

- TODO: BASH: Create SSH Key and add to GitHub
- BASH: .Net Core Pre-Reqs - 
  - Download Pre-req script from https://dot.net/v1/dotnet-install.sh
  - Execute script

  ```./dotnet-install.sh -c Current```

 - Additional details at https://docs.microsoft.com/en-us/dotnet/core/linux-prerequisites?tabs=netcore2x#linux-distribution-dependencies
- BASH: .net core
  - Register the MS Keyand Feed
  
  ```bash
  wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
  sudo dpkg -i packages-microsoft-prod.deb
  ```
  - Install .Net Core

  ```bash
  sudo add-apt-repository universe
  sudo apt-get install apt-transport-https
  sudo apt-get update
  sudo apt-get install dotnet-sdk-2.1=2.1.400-1
  ```

  - More Details here: https://www.microsoft.com/net/download/linux-package-manager/ubuntu18-04/sdk-2.1.400

NVM/Node for Linux (https://github.com/creationix/nvm) BASH: 

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
```

Install Node/npm on Ubuntu (```nvm install 10.16.3```  && ```nvm install 12.10.0```)

BASH: ```git config --global credential.helper cache```

Setup ConEmu (Add ```-t zsh -l``` to end of Bash line for OhMyZSH)
  
##### If you have more than 1 WSL Distro installed...

Tell ConEmu which Distro to open specifically, or it will only ever use the default Distro

Find the GUID of your distribution in the registry under  HKCU\Software\Microsoft\Windows\CurrentVersion\Lxss. In my case, Debian distro has GUID {1f6b2238-ec8d-4066-8e2b-ee31ce97ad3f}.
Modify task for your WSL by inserting after "--wsl" ```-C~ --distro-guid={DISTRO-GUID}```    -- Keep the curly's

Fedora Remix:
```set "PATH=%ConEmuBaseDirShort%\wsl;%PATH%" & %ConEmuBaseDirShort%\conemu-cyg-64.exe --wsl -cur_console:pm:/mnt -C~ --distro-guid={cd15edb3-2d91-4dcc-8b02-57a56f0d5629} -t zsh -l```

WLinux:
```set "PATH=%ConEmuBaseDirShort%\wsl;%PATH%" & %ConEmuBaseDirShort%\conemu-cyg-64.exe --wsl -cur_console:pm:/mnt -C~ --distro-guid={98898fa5-4b79-4e30-9a73-2c1ae43e3d2c} -t zsh -l```
