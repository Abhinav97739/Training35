# Monitor CPU usage
top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/"

# memory utilization
free | awk '/Mem/{printf("%.2f"), $3/$2*100}'

# disk space
df -h / | awk '/\//{print $(NF-1)}'

# network statistics
netstat -i

# Capture top processes
top -bn 1 | head -n 10
