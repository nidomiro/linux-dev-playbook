# linux-dev-playbook


## Installation

```shell
ansible-galaxy install -r requirements.yml
```

## Run
```shell
ansible-playbook main.yml --ask-become-pass --vault-password-file ./local-secrets/vault-pass
```

## TODO
- change current users shell to zsh

## Starting from clean (fedora) with Backup
1. Upgrade System via Console (UI may not work): `sudo dnf upgrade --refresh`
2. Restart the pc
3. `sudo dnf install pip3`
4. copy `workspace/` to `~/workspace/`
5. Copy the following configs into place:
   1. Nextcloud: Target Path: `~/.config/Nextcloud`
   2. Syncthing: Target Path: `~/.config/syncthing`
   3. Egosoft: Target Path: `~/.config/EgoSoft`
   4. Firefox: Target Path: `~/.mozilla`
   5. Thunderbird: Target Path: `~/.thunderbird`
   6. Steam: Target Path: `~/.steam`
   7. Obsidian: Target Path: `~/.var/app/md.obsidian.Obsidian/`
   8. SSH Config: Target Path: `~/.ssh/config`
6. `cd ~/workspace/nidomiro.de/linux-dev-playbook/`
7. `pip3 install ansible`
8. `ansible-galaxy install -r requirements.yml`
9. `ansible-playbook main.yml --ask-become-pass --vault-password-file ./local-secrets/vault-pass`
10.  Make sure plasma loads `.profile`
    1.  `mkdir -p $HOME/.config/plasma-workspace/env`
    2.  `echo 'source $HOME/.profile' > $HOME/.config/plasma-workspace/env/load.profile.sh`
    3.  `chmod +x $HOME/.config/plasma-workspace/env/load.profile.sh`
11.  Start and enable Syncthing
    1.  `sudo systemctl enable syncthing@$USER.service`
    2.  `sudo systemctl start syncthing@$USER.service`
12.  On Framework 13:
    1.  Firmware version Info: `sudo dnf install lshw dmidecode -y && sudo dmidecode | grep -A3 'Vendor:\|Product:' && sudo lshw -C cpu | grep -A3 'product:\|vendor:'`
    2.  Brightness keys: `sudo grubby --update-kernel=ALL --args="module_blacklist=hid_sensor_hub"`
    3.  Better Powersave with nvme: `sudo grubby --update-kernel=ALL --args="nvme.noacpi=1"`
    4.  Intel Graphics VA-API:
        1.  ```shell
            sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
            sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
            ```
        2. `sudo dnf groupinstall multimedia`
        3. `sudo dnf install intel-media-driver libva libva-utils gstreamer1-vaapi ffmpeg intel-gpu-tools mesa-dri-drivers mpv --skpi-broken`

## Starting from clean (kubuntu)

1. `sudo apt update && sudo apt upgrade && sudo apt install syncthing syncthing-gtk python3 python3-pip`
2. Start Syncthing (GTK)
3. `mkdir ~/workspace`
4. Connect the new syncthing instance and sync the workspace to `~/workspace`
5. After successful sync execute: `echo '#include sync-exclude.lst' > .stignore`
6. `cd ~/workspace/nidomiro.de/linux-dev-playbook/`
7. `python3 -m pip install --user ansible`
8. `export PATH="$HOME/.local/bin:$PATH`
9. `ansible-galaxy install -r requirements.yml` if the command fails duetue locale problems execute `export LC_ALL=en_US.UTF-8`
10. `ansible-playbook main.yml --ask-become-pass`
11. Open JB Toolbox and install the desired IDEs (Webstorm, IntelliJ, Datagrip and Gateway)
12. Open Steam and install the desired games
13. Open and connect Firefox
14. Open and setup Thunderbird
15. Open and setup Obsidian
16. Open and setup Todoist
17. Pin Taskbar Apps (Dolphin, Terminal, Firefox, Thunderbird, (Vivaldi), Chrome, JB-Toolbox, Webstorm, VSCode, Obsidian, Todoist, Spotify, System Monitor)
18. Configure KDE to use DarkMode
19. KDE: invert mouse scroll dir
20. KDE: active numpad by default?
21. KDE: touchpad: natural scroll
22. KDE: touchpad: (framework 13): Pointer acceleration: 0.24
23. KDE: Keyboard: eurkey and german
24. KdeConnect: connect Phone
25. add backports ppa for kubuntu?
26. If necessary install gnome-keyring to allow vscode to save secrets (not needed after KDE 5.26 anymore)
27. download the gpg-keys => insert yubikey, then execute
    ```shell
    gpg --card-edit
    fetch
    quit
    ```
28. 
