#!/bin/bash

mkdir -p CTF-Lite/insider-vault/{logs,tmp,home,downloads,exploits}
touch CTF-Lite/insider-vault/logs/.access.log

# Create a decoy file with a fake flag
echo "FLAG{fake_flag_here}" > CTF-Lite/insider-vault/tmp/fake_flag.txt

# Real flag hidden inside a SUID root-owned script
echo '#!/bin/bash' > CTF-Lite/insider-vault/exploits/suspicious.sh
echo 'echo "FLAG{insider-threat-escalated}"' >> CTF-Lite/insider-vault/exploits/suspicious.sh
chmod 4755 CTF-Lite/insider-vault/exploits/suspicious.sh
chown root:root CTF-Lite/insider-vault/exploits/suspicious.sh

# A "normal" looking file with hidden EXIF flag (will embed later)
echo "Look at this cool cat meme!" > CTF-Lite/insider-vault/downloads/cat.jpg

# Hidden user clue file with permissions
mkdir -p CTF-Lite/insider-vault/home/.hidden_user_data
echo "Clue: SUID binary is key" > CTF-Lite/insider-vault/home/.hidden_user_data/clue.txt
chmod 700 CTF-Lite/insider-vault/home/.hidden_user_data
