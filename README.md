# dotfiles

## Installation
At the moment, all you need to do (and all you can really do) is to run `install.sh` in your shell.
```bash
> ./install.sh
```
As part of the installation it will create a timestamped folder (for example, `dotfiles_bak_20150731_1456/`) that has a copy of all dotfiles previously in your home folder before you ran the script.

All files are symlinked from this repository folder into your home folder.

If you have trouble running the script, trying running `chmod +x install.sh` (you may need to `sudo`).
