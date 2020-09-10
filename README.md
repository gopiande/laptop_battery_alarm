# laptop_battery_alarm
#Description
set this as cron job in the Linux OS to get notified continuously when the battery charge &lt; 10% 

## Instructions
Schedule this shell script to run as user cronjob as root level cronjob cannot play sounds.
Command for scheduling as cronjob user 'crontab -u <user> -e'

*/1 * * * * /bin/bash /home/gopi/softwares/battery_alarm/alarm.sh >/dev/null 2>&1
