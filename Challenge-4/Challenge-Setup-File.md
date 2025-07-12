#!/bin/bash

mkdir -p ~/CTFs/CTF-Challenge-4/{.hidden_devices,logs,temp,core,shells}
cd ~/CTFs/CTF-Challenge-4 || exit

echo -e "[INFO] Network interface eth0 up\n[INFO] Interface wlan0 in monitor mode\n[ALERT] Unknown MAC 00:14:22:01:23:45 detected on port 4\n" > logs/network_trace.log
echo "sshd: Failed password for invalid user admin from 192.168.0.103" > logs/auth.log
echo "sshd: Accepted password for root from 127.0.0.1" >> logs/auth.log

echo -e "#!/bin/bash\necho 'Root exploit initiated'\necho 'flag{you_executed_a_fake_exploit}'" > core/systemctl
chmod +x core/systemctl

echo -e "#!/bin/bash\necho 'flag{suid_binary_masquerade}'" > shells/rootkit
chmod +s shells/rootkit
chmod +x shells/rootkit

echo "ZmxhZ3tjbG9ha2VkX25ldHdvcmtfcGFja2V0fQ==" > .hidden_devices/fpga_device.tmp

ln -s /etc/passwd temp/user_list
echo "@reboot /home/jynx/CTFs/CTF-Challenge-4/core/systemctl #flag{scheduled_backdoor_boot}" >> temp/crontab.bak
