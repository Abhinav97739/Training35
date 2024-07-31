# Parse syslog for errors
grep -i "error" /var/log/syslog

# Summarize recent log entries
tail -n 20 /var/log/syslog
