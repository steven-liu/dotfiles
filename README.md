# dotfiles

## Installation
At the moment, all you need to do (and all you can really do) is to run `install.sh` in your shell. This will create symlinks in your home folder to files in this repo.
```bash
> ./install.sh
```
The script will also create a timestamped folder (for example, `dotfiles_bak_20150731_1456/`) that has a copy of all dotfiles previously in your home folder before you ran the script.

If you have trouble running the script, trying running `chmod +x install.sh` (you may need to `sudo`).

## TODO
* Probably want to redo my vim installation with a better package manager, say [Neobundle](https://github.com/Shougo/neobundle.vim) or another one of those newer ones.
* Start using [EditorConfig](http://editorconfig.org/) for per-filetype indentation and whitespace settings. Better than repeatedly calling `autocmd FileType ...` commands.
