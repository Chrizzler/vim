#!/bin/bash
# write the current crontab 
crontab -l > mycron
# add the update cron, daily at 12:00 to the file
echo "00 12 * * * vim +PlugUpgrade +PlugUpdate +qa!" >> mycron
# install the new file
crontab mycron
# remove the file
rm mycron
