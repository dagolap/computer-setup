# Computer Setup

Repository to set up a new computer.

## Installing a new workstation

1. Check out this repository to a permanent location. (I suggest `~/.computer-setup`)
2. Install ansible and git: `sudo dnf install ansible git`
  - If on Fedora: Install python-dnf to control dnf package manager: `sudo dnf install python2-dnf`
3. `cd ~/.computer-setup` or other relevant location.
4. Make sure variables set in the playbook is correct
5. `ansible-playbook -i inventory playbook-localhost-workstation.yml --become --ask-become-pass`

## TODO

* Java dev environment (Oracle java, IntelliJ, gradle, ++)
* Configuration of GUI-stuff (desktops, keyboard shortcuts, themes, icons, etc.)
