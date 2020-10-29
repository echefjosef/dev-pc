# dev-linux

Developer setup scripts and steps for Linux

## Setup

Kali for Security

Fedora for Desktop

### Initial Bash setup

Update Apt - BASH: ```sudo apt-get update```
Upgrade Apt packages - BASH: ```sudo apt-get upgrade```

### Install ZSH and Oh My ZSH

Install ZSH - BASH: ```sudo apt-get install zsh```
Install OhMyZSH (https://ohmyz.sh/)  BASH:  ```sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"```

- Update Bash shell to use DejaVu Sans Powerline patched font (Windows Ubuntu shell, Properties, Font)

BASH: Use nano to edit ~/.zshrc, change ZSH_THEME to "agnoster"

### Configure Git and SSL

[Use this guide to setup git and SSL](ssl-git.md)

### Customizations

BASH: Add Reload Alias to .zshrc ```alias reload="source ~/.zshrc"```

BASH: Add Dev Alias to .zshrc ```alias dev="cd /mnt/c/dev"```

## Languages

### Node and NVM

[NVM/Node for Linux](https://github.com/creationix/nvm)

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
```

Install Node/npm common versions (```nvm install v12.19.0```  && ```nvm install v14.15.0```)

### Python

### Ruby

### .Net Core

## Apps

## VSCode

### Firefox

### Slack

### Email
