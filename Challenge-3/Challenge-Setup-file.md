# 🧠 Deploy Your Own CTF Challenge #3

Want to replicate this CTF environment on your local Linux system?

---

## 🚀 What You'll Get

- 4 Realistic flags (hidden via base64, SUID, fake key, and distractions)
- Booby traps
- Decoy files
- Real-world Linux file permissions challenge

---

## 🛠️ Prerequisites

- Bash-compatible Linux
- At least 10MB disk space
- Git (optional)

---

## 📦 Installation Script

### Copy & paste the following into your terminal:


#!/bin/bash

mkdir -p ~/CTF-Challenge-3/{bin,decoys,labs,.hidden} && cd ~/CTF-Challenge-3

cat << 'EOF' > decoys/root_access.sh


#!/bin/bash

echo "flag{gotcha_try_again}"

EOF
chmod 755 decoys/root_access.sh

sudo chown root:root decoys/root_access.sh

echo "flag{this_was_too_easy_right}" > labs/FLAG.txt

mkdir -p .hidden/keys

echo "-----BEGIN PRIVATE KEY-----

MIICdQIBADANBgkq...

-----END PRIVATE KEY-----

flag{fake_private_flag}

" > .hidden/keys/id_rsa

chmod 600 .hidden/keys/id_rsa

echo "U29tZXRpbWVzIHlvdSBqdXN0IG5lZWQgdG8gYmUgcm9vdCB0byBiZSB3b3J0aHkKZmxhZ3t5b3Vfc2V0X3RoZV9zaGVsbF9vbmx5X2ZsYWd9" > bin/debug.log

base64 -d bin/debug.log > bin/.secret_exec

chmod 755 bin/.secret_exec

sudo chown root:root bin/.secret_exec

sudo chmod 4755 bin/.secret_exec

echo "This exploit is WIP. Reverse engineer to get flag." > labs/exploit.py

touch .flag

chmod 0000 .flag

echo -e "Find the real flag. Only one exists.\nHint: Permissions lie, appearances lie more." > README.md

echo "[*] CTF-Challenge-3 created with traps, decoys, and SUID twist!"

