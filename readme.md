# Computer Setup

Repository to set up a new computer.


## Requirements
* `git ansible`
* Fedora: `python-dnf`
* Ubuntu: `python-apt`

## Installing a new workstation
1. Check out this repository to a permanent location. (Suggested: `~/.computer-setup`)
2. Make sure requirements as state above are installed
3. `cd ~/.computer-setup` or wherever checkout is.
4. Make sure variables set in the playbook is correct
5. `ansible-playbook -i inventory playbook-localhost-workstation.yml --become --ask-become-pass`

## TODO
* Java dev environment (Oracle java, IntelliJ, gradle, ++)
* Some more configuration of GUI-stuff (desktops, keyboard shortcuts, etc.)
