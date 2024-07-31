# Check essential services
systemctl is-active mysql

# Verify external connectivity (example: ping a server)
ping -c 1 "url" >/dev/null 2>&1 && CONNECTIVITY_STATUS="Connected" || CONNECTIVITY_STATUS="Disconnected"
