# laptop_battery_alarm
#Description
set this as cron job in the Linux OS to get notified continuously when the battery charge &lt; 10% 

## Instructions
1. Schedule this shell script to run as user cronjob as root level cronjob cannot play sounds.
2. Command for scheduling as cronjob user 'crontab -u <user> -e'
3. This job runs once for every minute. You can customize it as per your requirement.


*/1 * * * * /bin/bash /home/gopi/softwares/battery_alarm/alarm.sh >/dev/null 2>&1

This is initially developed on ubuntu 20.04 version and tested.
