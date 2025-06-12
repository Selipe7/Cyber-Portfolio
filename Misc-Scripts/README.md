# Miscellaneous Cybersecurity Scripts

This folder contains lightweight, practical scripts I’ve written for cybersecurity automation and log analysis. 
These tools are useful for small tasks you'd find in junior analyst or blue team roles.

---

## 📜 Scripts Included

### 🔹 `enforce-password-policy.ps1`
- Enforces password length and complexity in AD via Group Policy
- Can be scheduled as part of compliance auditing

### 🔹 `log-parser.py`
- Parses log files (syslog, Windows Events) for patterns like failed logins, port scans, etc.
- Outputs filtered results and summary stats

### 🔹 `IOC-scanner.py`
- Scans logs or memory dumps for indicators of compromise (IPs, hashes, domains)
- Takes IOC list as input, supports regex matching

---

## 💡 What I Learned
Writing these taught me the value of automating repetitive tasks, handling large logs efficiently, and building security tools in PowerShell and Python.

---
