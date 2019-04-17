# vim-config
Install vim with different plugins. (Warning, this script deletes the existing .vimrc file and .vim folder)
```
./install.sh
```
## Manuell Update
Simply run this: 
```
vim +PlugUpgrade +PlugUpdate +qa!
```
## Auto-Update
You can add to crontab a simply line to auto-update your plugins.
With this script, the auto-update line is added to crontab, which will update
your plugins and plug at 12:00 every day.
```
./autoupdate.sh
```
## Solarized
The solarized .reg files are for windows users. They could use them to
solarize putty or the ubuntu bash or cmd or ...
