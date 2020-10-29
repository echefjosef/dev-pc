# SSL Keys and Github setup

## Add new Key

Create new Key files

```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

## Import a Key

TODO: Add scripting for import

## SSL setup

Start the Agent (add to bashrc if you want this automatically done)

```bash
eval "$(ssh-agent -s)"
```

Add your key to the agent

```bash
ssh-add ~/.ssh/id_rsa
```

## Add to Gihub

Add XClip

```bash
sudo apt-get install xclip
```

Copy SSL Key

```bash
xclip -sel clip < ~/.ssh/id_rsa.pub
```

## SSL Key caching in Git

Setup git credential cache

```bash
git config --global credential.helper cache
```

Setup Git User data in configuration

```bash
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
```
