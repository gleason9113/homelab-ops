Bash

#!/bin/bash

# Purpose: Review the host system configuration against a security checklist and report the results in a Markdown file.
# Work in Progress: This script is a work in progress and may not be production-ready.

host_name=$(hostname)
fq_name=$(hostname --fqdn)
os_distro=$(lsb_release -d | cut -f2)
kernel=$(uname -r)
architecture=$(uname -m)
vm_status=$(systemd-detect-virt)
uptime=$(uptime -p 2>/dev/null || awk '{
    days=int($1/86400); 
    hours=int(($1%86400)/3600); 
    mins=int(($1%3600)/60); 
    if (days>0) printf "%d days, ", days; 
    printf "%d hours, %d minutes\n", hours, mins
}' /proc/uptime)

# Check SSH configuration

root_login_disabled=$(sshd -T | grep permitrootlogin | awk '{print $2}')
pw_auth_disabled=$(sshd -T | grep passwordauthentication | awk '{print $2}')
custom_port=$(sshd -T | grep port | awk '{print $2}')
no_empty_passwords=$(sshd -T | grep permitemptypasswords | awk '{print $2}')

# Check Firewall & Network Configuration

ufw_status=$(ufw status | head -n 1)
default_policies=$(ufw status verbose | grep "Default" | awk '{print $2, $3}')
open_ports=$(sudo ufw status numbered | grep -E 'ALLOW|DENY' | awk '{print $2, $3, $4}')
fail2ban_status=$(systemctl status fail2ban | grep Active | awk '{print $2}')
if systemctl is-active --quiet fail2ban 2>/dev/null; then
    fail2ban_jails=$(sudo fail2ban-client status 2>/dev/null | grep "Jail list" | cut -d: -f2 | xargs || echo "None")
else
    fail2ban_jails="Fail2ban not running"
fi


# Package & Upgrade Checks

unattended_upgrades_enabled=$(systemctl status unattended-upgrades | grep Active | awk '{print $2}')
repo_list=$(cat /etc/apt/sources.list /etc/apt/sources.list.d/*.list 2>/dev/null | grep -vE '^\s*#' | awk '{print $1, $2, $3}' | sort -u)

# User & Privilege Checks
sudo_users=$(getent group sudo | awk -F: '{print $4}')
empty_passwds=$(awk -F: '($2 == "") {print $1}' /etc/shadow)
service_accts=$(awk -F: '($7 !~ /nologin$\vert{}false$/) {print $1, $7}' /etc/passwd)
pw_hashes_root_only=$(stat -c "%a %n" /etc/shadow | awk '{if ($1 == "400") print $2}')
elevated_binaries=$(find / -perm /6000 -type f 2>/dev/null | xargs -I {} ls -l {} | awk '{print $1, $3, $4, $9}')

# Format and generate Markdown report

report_file="config-report_${host_name}.md"

cat << EOF > "${report_file}"
# System Configuration Report

**Generated On:** $(date -u)
**Target Host:** ${host_name}

---

## 1. Core System Metadata

| Parameter | Value |
| :--- | :--- |
| **Hostname** | ${host_name} |
| **FQDN** | ${fq_name} |
| **OS Distribution** | ${os_distro} |
| **Kernel Version** | ${kernel} |
| **Architecture** | ${architecture} |
| **Hypervisor Status** | ${vm_status} |
| **System Uptime** | ${uptime} |

---

## 2. SSH Configuration & Hardening

| Check Item | Parameter / Setting | Value | Expected / Secure State |
| :--- | :--- | :--- | :--- |
| **Root Login Disabled** | \`PermitRootLogin\` | ${root_login_disabled:-unknown} | \`no\` |
| **Password Authentication** | \`PasswordAuthentication\` | ${pw_auth_disabled:-unknown} | \`no\` |
| **Custom Port** | \`Port\` | ${custom_port:-unknown} | Non-default port (e.g., \`2291\`) |
| **Empty Passwords** | \`PermitEmptyPasswords\` | ${no_empty_passwords:-unknown} | \`no\` |

---

## 3. Firewall & Intrusion Detection (UFW & Fail2ban)

| Component | Setting / Status | Value |
| :--- | :--- | :--- |
| **UFW Status** | Operational State | ${ufw_status:-unknown} |
| **Default Policies** | Incoming / Outgoing | ${default_policies:-unknown} |
| **Fail2ban Status** | Service State | ${fail2ban_status:-unknown} |
| **Fail2ban Active Jails** | Monitored Services | ${fail2ban_jails:-none} |

### UFW Rules / Open Ports
\`\`\`text
${open_ports:-None configured}
\`\`\`

---

## 4. Package Management & Security Updates

| Parameter | Value |
| :--- | :--- |
| **Unattended Upgrades Status** | ${unattended_upgrades_enabled:-unknown} |

### Configured Package Repositories
\`\`\`text
${repo_list:-None found}
\`\`\`

---

## 5. User & Privilege Audit

| Audit Target | Identified Accounts / Results |
| :--- | :--- |
| **Sudo Group Members** | ${sudo_users:-None} |
| **Accounts with Empty Passwords** | ${empty_passwds:-None (Secure)} |
| **Accounts with Interactive Shells** | ${service_accts:-None} |
| **Shadow File Permissions Restricted** | ${pw_hashes_root_only:-Secure (or restricted)} |

---

## 6. Elevated Privilege Binaries (SUID / SGID)

\`\`\`text
${elevated_binaries:-No binaries found or un-audited}
\`\`\`
EOF

echo "Report generated successfully: ${report_file}"