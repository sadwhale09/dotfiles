# Enable sshd service
sudo systemctl enable sshd

# Start sshd service
sudo systemctl start sshd

# Check status
# sudo systemctl status sshd

# Open port for 22
sudo firewall-cmd --permanent --add-port=22/tcp
