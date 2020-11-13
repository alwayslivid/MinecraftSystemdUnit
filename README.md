# Origami RPi4

Set of tools and maintainance scripts for managing a Paper Minecraft server on a Raspberry Pi 4.

## Setup Instance

- Ensure that you have installed Java on your machine.

- In order to configure your Minecraft server, run the [`setup.sh`](setup.sh) script:

`sh setup.sh`

- After installing Paper, go to the directory of your new Minecraft server and agree to the [EULA](https://account.mojang.com/documents/minecraft_eula)

```
cd /opt/minecraft/survival
sudo nano eula.txt
```

## Usage

### Enable Autostart

`systemctl enable minecraft@survival`

### Disable Autostart

`systemctl disable minecraft@survival`

### Start Manually

`systemctl start minecraft@survival`

### Stop Manually

`systemctl stop minecraft@survival`

### Enter Server Commands

- With `sudo`:

`sudo -u minecraft screen -r`
