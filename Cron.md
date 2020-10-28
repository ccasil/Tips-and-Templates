# Cron

The software utility cron also known as cron job is a time-based job scheduler in Unix-like computer operating systems. Users that set up and maintain software environments use cron to schedule jobs to run periodically at fixed times, dates, or intervals.

| Entry                  | Description                                                | Equivalent to |
| ---------------------- | ---------------------------------------------------------- | ------------- |
| @yearly (or @annually) | Run once a year at midnight of 1 January                   | 0 0 1 1 *     |
| @monthly               | Run once a month at midnight of the first day of the month | 0 0 1 * *     |
| @weekly                | Run once a week at midnight on Sunday morning              | 0 0 * * 0     |
| @daily (or @midnight)  | Run once a day at midnight                                 | 0 0 * * *     |
| @hourly                | Run once an hour at the beginning of the hour              | 0 * * * *     |
| @reboot                | Run at startup                                             | N/A           |

## Useful Commands

| Command    | Action                                         |
| ---------- | ---------------------------------------------- |
| crontab -l | View cronjobs                                  |
| crontab -d | Remove all cronjobs directly without prompting |
| crontab -e | Edit crontab mode                              |

## Resources

**[Crontab Guru](https://crontab.guru/)**
