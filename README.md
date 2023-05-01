# linux-dev-playbook


## Installation

```shell
ansible-galaxy install -r requirements.yml
```

## Run
```shell
ansible-playbook main.yml --ask-become-pass --vault-password-file ./local-secrets/vault-pass
```

## Starting fom clean

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
19. 