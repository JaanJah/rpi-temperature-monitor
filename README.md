# Raspberry PI Temperature Monitor script
Script to write Raspberry PI core temperature with timestamp to log file.

Creates new log file for each day. (Writes to current working directory by default).

Log file name example:
`2020-08-26-heat.log`

Log file entry example (Timestamp and core temperature (Celsius)):

`2020-08-26T09:46:31+03:00 57.0`

## Usage:

Running the script
```sh
sh ./tempmon.sh
```

Example crontab to run this script every 15min:
```sh
*/15 * * * * sh /home/$USER/tempmon.sh >/dev/null 2>&1
```

## Features to add
- [ ] Custom directory
- [ ] Custom log file name