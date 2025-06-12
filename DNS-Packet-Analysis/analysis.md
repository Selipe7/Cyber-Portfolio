# DNS Packet Analysis - Malicious Traffic

## 🎯 Objective
Analyze captured DNS traffic to detect signs of malicious activity such as DNS tunneling, C2 communications, or data exfiltration.

## 🧪 Tools Used
- Wireshark
- VirusTotal
- DNSViz
- WHOIS lookup

## 🔍 Investigation Steps
1. Loaded `malicious_dns.pcap` into Wireshark
2. Applied DNS filter: `dns`
3. Identified long, random subdomains frequently queried
4. Checked queried domains on VirusTotal and AbuseIPDB
5. Tracked DNS traffic timeline and volume for exfiltration patterns

## 🔥 Findings
- Frequent TXT-type DNS queries to `stealthy-data.securehost[.]tk`
- Subdomain strings showed base64-encoded content
- Matched known behavior of DNS tunneling malware (e.g., Iodine, dnscat2)

## 🛡 Recommendations
- Block suspicious domains at DNS level
- Enable logging of outbound DNS queries
- Monitor for anomalous TXT record usage

## 📸 Screenshots
See `/screenshots/` for annotated PCAP views and timeline charts.

## 💡 What I Learned
This analysis sharpened my ability to spot abnormal DNS behavior and helped me understand how attackers use DNS for covert communications.
