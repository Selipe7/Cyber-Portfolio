# Phishing Alert: Investigation Report

## 📌 Alert Summary
An employee reported a suspicious email. This document outlines the steps I took to analyze the threat and determine whether it posed a risk to the organization.

## 🔍 Steps Taken
1. Collected full email headers
2. Verified the sender domain and reply-to address
3. Inspected links using hover and decoding tools
4. Checked domains against VirusTotal and OpenPhish
5. Examined header authentication (SPF, DKIM, DMARC)

## 🧠 Findings
- Sender was spoofed to look like a vendor
- No SPF/DKIM validation
- Link redirected to a fake Office 365 login

## 🛡 Recommendation
- Block the phishing domain in email filters
- Report the incident to IT security
- Educate the user on reporting suspicious emails

## 📸 Screenshots
See `/screenshots` for visuals of the email and analysis tools.

## 💡 What I Learned
This exercise improved my comfort with real-world email header analysis and reinforced how social engineering plays a major role in phishing attacks.
