# TryHackMe - Overpass (Linux)

## 🎯 Goal !
Compromise the target machine by exploiting a login system, gaining shell access, and escalating privileges.

## 🔎 Enumeration
- `nmap` scan revealed:
  - Port 22 (SSH)
  - Port 80 (HTTP)
- The web service hosted a login portal
- `gobuster` found `/admin` endpoint

## 🧨 Exploitation
- Performed credential stuffing using leaked creds from `/etc/overpass` directory
- Logged in via SSH as `james`
- Found SUID binary `/usr/bin/overpassEncrypt`

## 🔼 Privilege Escalation
- Reverse engineered the binary using `strings` and `ltrace`
- Discovered it calls `/tmp/passwd` insecurely
- Replaced the file with a malicious script to spawn root shell

## 💡 Takeaways
- Practiced real-world recon and binary exploitation
- Reinforced the importance of secure SUID permissions

## 📸 Screenshots
See `/screenshots/Overpass` for full walkthrough images.
