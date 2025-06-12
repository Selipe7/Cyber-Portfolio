# Azure IAM Drift Investigation

## 🎯 Objective
Investigate unauthorized privilege escalation in Azure by analyzing IAM role assignments and audit logs.

## 🔍 Steps Taken
1. Pulled logs from Azure Activity Log and Azure AD
2. Noticed a Contributor role assigned to a low-privilege user
3. Correlated timestamp with user login and audit trail
4. Verified no change control record for the action
5. Cross-referenced permissions with baseline IAM policy

## ⚠ Key Finding
User `alex.w` was unintentionally granted **Contributor** access to a production resource group without approval. This introduced risk of data exposure and resource deletion.

## 🛠 Tools Used
- Azure Portal (Activity Log, Access Reviews)
- Azure CLI
- Log Analytics Workspace
- JSON Viewer

## ✅ Remediation
- Revoked elevated role
- Enabled alerts for role changes
- Documented change in change management system

## 📸 Screenshots
Included in `/screenshots` are log views, permission charts, and timeline evidence.

## 💡 What I Learned
Understanding Azure’s role assignment model is critical. Even one bad assignment can escalate into a serious breach if left unnoticed.
