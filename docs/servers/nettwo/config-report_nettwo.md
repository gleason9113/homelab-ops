# System Configuration Report

**Generated On:** Tue Oct 27 09:52:15 PM UTC 2026
**Target Host:** nettwo

---

## 1. Core System Metadata

| Parameter | Value |
| :--- | :--- |
| **Hostname** | nettwo |
| **FQDN** | nettwo |
| **OS Distribution** | Ubuntu 26.04.1 LTS |
| **Kernel Version** | 7.0.0-38-generic |
| **Architecture** | x86_64 |
| **Hypervisor Status** | none
none |
| **System Uptime** | up 3 weeks, 2 days, 3 hours, 46 minutes |

---

## 2. SSH Configuration & Hardening

| Check Item | Parameter / Setting | Value | Expected / Secure State |
| :--- | :--- | :--- | :--- |
| **Root Login Disabled** | `PermitRootLogin` | no | `no` |
| **Password Authentication** | `PasswordAuthentication` | yes | `no` |
| **Custom Port** | `Port` | 2291 | Non-default port (e.g., `2291`) |
| **Empty Passwords** | `PermitEmptyPasswords` | no | `no` |

---

## 3. Firewall & Intrusion Detection (UFW & Fail2ban)

| Component | Setting / Status | Value |
| :--- | :--- | :--- |
| **UFW Status** | Operational State | Status: active |
| **Default Policies** | Incoming / Outgoing | deny (incoming), |
| **Fail2ban Status** | Service State | active |
| **Fail2ban Active Jails** | Monitored Services | sshd |

### UFW Rules / Open Ports
```text
1] 2291/tcp ALLOW
2] 2291/tcp (v6)
```

---

## 4. Package Management & Security Updates

| Parameter | Value |
| :--- | :--- |
| **Unattended Upgrades Status** | active |

### Configured Package Repositories
```text
None
```

---

## 5. User & Privilege Audit

| Audit Target | Identified Accounts / Results |
| :--- | :--- |
| **Sudo Group Members** | fr0sty |
| **Accounts with Empty Passwords** |  |
| **Accounts with Interactive Shells** | None |

---

## 6. Elevated Privilege Binaries (SUID / SGID)

```text
-rwsr-xr-x root root /usr/bin/mount
-rwxr-sr-x root shadow /usr/bin/chage
-rwsr-xr-x root root /usr/bin/sudo.ws
-rwsr-xr-x root root /usr/bin/umount
-rwsr-xr-x root root /usr/bin/chsh
-rwsr-xr-x root root /usr/bin/fusermount3
-rwsr-xr-x root root /usr/bin/newgrp
-rwsr-xr-x root root /usr/bin/su
-rwsr-xr-x root root /usr/bin/passwd
-rwsr-xr-x root root /usr/bin/gpasswd
-rwsr-xr-x root root /usr/bin/ntfs-3g
-rwxr-sr-x root shadow /usr/bin/expiry
-rwxr-sr-x root crontab /usr/bin/crontab
-rwxr-sr-x root _ssh /usr/bin/ssh-agent
-rwsr-xr-x root root /usr/bin/chfn
-rwxr-sr-x root shadow /usr/sbin/pam_extrausers_chkpwd
-rwxr-sr-x root shadow /usr/sbin/unix_chkpwd
-rwsr-xr-x root root /usr/lib/cargo/bin/sudo
-rwsr-xr-x root root /usr/lib/cargo/bin/su
-rwsr-xr-- root messagebus /usr/lib/dbus-1.0/dbus-daemon-launch-helper
-rwsr-xr-x root root /usr/lib/openssh/ssh-keysign
None
```
