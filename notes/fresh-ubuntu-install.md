# Fresh Ubuntu Install

## Setting Up
1. Get system updates 
```
sudo apt update && sudo apt upgrade
```

2. Set default directory where user-specific configuration files should be stored
```
export XDG_CONFIG_HOME="$HOME/.config"
```

3. Set git user config
```
git config --global user.name "your_name"
git config --global user.email "your_email@example.com"
```

## Tools
### Install some modern tools from [article](https://narasimmantech.com/try-these-8-modern-alternatives-to-common-unix-commands/) or [modern-unix](https://github.com/ibraheemdev/modern-unix)

### Set up Node dev env
- Install fnm (Fast Node Manager) or nvm
> Ensure `curl` and `unzip` are already installed
```bash
# install fnm
curl -fsSL https://fnm.vercel.app/install | bash
# install newest LTS release of Node.js
fnm install --lts
# optional install other versions of node
fnm install --latest
```
- Install tldr
```sh
npm install -g tldr
```

### Set up hardware 2FA
[HyperFIDO keys on Linux user manual](https://www.hypersecu.com/_files/ugd/5aae8d_b5d0f7d27ea645a3bc20db6d3fc8e69d.pdf)
1. Download the HYPERSECU® HyperFIDO Linux Rules file 70-u2f.zip from hypersecu.com/downloads/ [direct link](https://033c2a7e-e1da-473d-a255-6132a1d3aa6e.filesusr.com/archives/f34f4c_25ac6962fcb6439e8d79e7add44dea9c.zip?dn=70-u2f.zip)
```bash
# 1. download HyperFIDO Linux Rules file
wget https://033c2a7e-e1da-473d-a255-6132a1d3aa6e.filesusr.com/archives/f34f4c_25ac6962fcb6439e8d79e7add44dea9c.zip?dn=70-u2f.zip -o 70-u2f.zip
# 2. unzip the file
unzip 70-u2f.zip
# 3. copy the 70-u2f.rules file to /etc/udev/rules.d/ (requires root permission to move here)
sudo mv 70-u2f.rules /etc/udev/rules.d/
# 4. restart your computer
```
2. Set up Windows to use a security key [guide](https://levelup.gitconnected.com/how-to-use-a-yubikey-in-wsl2-linux-on-windows-96f176518583) or [windows-fido-bridge](https://github.com/mgbowen/windows-fido-bridge) or [dan drown's guide](https://blog.dan.drown.org/u2f-fido2-based-ssh-keys-on-windows/)

