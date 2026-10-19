# Server Hardening Checklist & Audit Guide

This document defines the baseline security posture and verification procedures for Ubuntu-based infrastructure in the homelab.

---

## 1. SSH Hardening

| Check Item | Description | Verification Command | Expected / Secure State |
| :--- | :--- | :--- | :--- |
| **Root Login Disabled** | Prevent direct root login over SSH. | `sshd -T \| grep permitrootlogin` | `no` |
| **Password Authentication** | Enforce SSH key-only authentication. | `sshd -T \| grep passwordauthentication` | `no` |
| **Custom Port** | Run SSH on a non-standard port. | `sshd -T \| grep "^port "` | Non-default port (e.g., `2291`) |
| **Empty Passwords** | Disallow login from accounts with empty passwords. | `sshd -T \| grep permitemptypasswords` | `no` |

---

## 2. Firewall & Network Security (UFW)

| Check Item | Description | Verification Command | Expected / Secure State |
| :--- | :--- | :--- | :--- |
| **UFW Status** | Ensure the Uncomplicated Firewall is enabled. | `sudo ufw status verbose` | `Status: active` |
| **Default Policies** | Drop incoming traffic by default, allow outgoing. | `sudo ufw status verbose` | `Default: deny (incoming), allow (outgoing)` |
| **Exposed Ports** | Verify only intended ports are open. | `sudo ufw status numbered` | Matches documented infrastructure requirements |

---

## 3. Package Management & Updates

| Check Item | Description | Verification Command | Expected / Secure State |
| :--- | :--- | :--- | :--- |
| **Unattended Upgrades** | Automatic security updates enabled. | `systemctl status unattended-upgrades` | `active (running)` |
| **Package Sources** | Verify configured apt repositories. | `cat /etc/apt/sources.list /etc/apt/sources.list.d/*` | Clean, trusted sources only |

---

## 4. User & Privilege Management

| Check Item | Description | Verification Command | Expected / Secure State |
| :--- | :--- | :--- | :--- |
| **Sudo Users** | Review accounts with elevated privileges. | `getent group sudo` | Only authorized users |
| **Empty Passwords** | Check for local accounts without passwords. | `awk -F: '($2 == "") {print $1}' /etc/shadow` | No output (empty) |
| **Interactive Shells** | Review service accounts with valid login shells. | `awk -F: '($7 !~ /nologin$|false$/) {print $1, $7}' /etc/passwd` | Only administrative users |

---

## 5. Brute-Force Protection & Auditing

| Check Item | Description | Verification Command | Expected / Secure State |
| :--- | :--- | :--- | :--- |
| **Fail2ban** | Intrusion prevention software installed and active. | `systemctl status fail2ban` | `active (running)` |
| **Fail2ban Jails** | Verify active jails (e.g., for SSH). | `sudo fail2ban-client status` | Jail list includes `sshd` |

---

## 6. Filesystem & Critical Permissions

| Check Item | Description | Verification Command | Expected / Secure State |
| :--- | :--- | :--- | :--- |
| **Shadow File Permissions** | Ensure password hashes are not globally readable. | `stat -c "%a %n" /etc/shadow` | `600` or `000` (root-only) |
| **SUID/SGID Binaries** | Audit binaries with elevated execution rights. | `find / -perm /6000 -type f 2>/dev/null` | Baseline known set |