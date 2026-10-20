# System Configuration Report

**Generated On:** Thu Oct 15 11:04:23 PM UTC 2026
**Target Host:** netone

---

## 1. Core System Metadata

| Parameter | Value |
| :--- | :--- |
| **Hostname** | netone |
| **FQDN** | netone |
| **OS Distribution** | Ubuntu 26.04 LTS |
| **Kernel Version** | 7.0.0-29-generic |
| **Architecture** | x86_64 |
| **Hypervisor Status** | none |
| **System Uptime** | up 9 weeks, 5 days, 1 hour, 46 minutes |

---

## 2. SSH Configuration & Hardening

| Check Item | Parameter / Setting | Value | Expected / Secure State |
| :--- | :--- | :--- | :--- |
| **Root Login Disabled** | `PermitRootLogin` | no | `no` |
| **Password Authentication** | `PasswordAuthentication` | yes | `no` |
| **Custom Port** | `Port` | 2291
no | Non-default port (e.g., `2291`) |
| **Empty Passwords** | `PermitEmptyPasswords` | no | `no` |

---

## 3. Firewall & Intrusion Detection (UFW & Fail2ban)

| Component | Setting / Status | Value |
| :--- | :--- | :--- |
| **UFW Status** | Operational State | Status: active |
| **Default Policies** | Incoming / Outgoing | deny (incoming), |
| **Fail2ban Status** | Service State | failed |
| **Fail2ban Active Jails** | Monitored Services | Fail2ban not running! |

### UFW Rules / Open Ports
```text
1] 80/tcp ALLOW
2] 2291/tcp ALLOW
3] 443/tcp ALLOW
4] 53/tcp ALLOW
5] 53/udp ALLOW
6] 51820/udp ALLOW
7] 51821/tcp ALLOW
8] 51820/udp (v6)
```

---

## 4. Package Management & Security Updates

| Parameter | Value |
| :--- | :--- |
| **Unattended Upgrades Status** | active |

### Configured Package Repositories
```text
deb https://download.docker.com/linux/ubuntu resolute
```

---

## 5. User & Privilege Audit

| Audit Target | Identified Accounts / Results |
| :--- | :--- |
| **Sudo Group Members** | fr0sty |
| **Accounts with Empty Passwords** | None (Secure) |
| **Accounts with Interactive Shells** | None |
| **Shadow File Permissions Restricted** | Secure (or restricted) |

---

## 6. Elevated Privilege Binaries (SUID / SGID)

```text
-rwsr-xr-x root root /var/lib/docker/rootfs/overlayfs/c34cadc54f5b2525114f9443d74b45c33b03ec0b53f5c2df46e11f641f1f855e/usr/bin/passwd
-rwsr-xr-x root root /var/lib/docker/rootfs/overlayfs/c34cadc54f5b2525114f9443d74b45c33b03ec0b53f5c2df46e11f641f1f855e/usr/bin/gpasswd
-rwsr-xr-x root root /var/lib/docker/rootfs/overlayfs/c34cadc54f5b2525114f9443d74b45c33b03ec0b53f5c2df46e11f641f1f855e/usr/bin/expiry
-rwsr-xr-x root root /var/lib/docker/rootfs/overlayfs/c34cadc54f5b2525114f9443d74b45c33b03ec0b53f5c2df46e11f641f1f855e/usr/bin/chfn
-rwsr-xr-x root root /var/lib/docker/rootfs/overlayfs/c34cadc54f5b2525114f9443d74b45c33b03ec0b53f5c2df46e11f641f1f855e/usr/bin/sudo
-rwsr-xr-x root root /var/lib/docker/rootfs/overlayfs/c34cadc54f5b2525114f9443d74b45c33b03ec0b53f5c2df46e11f641f1f855e/usr/bin/chsh
-rwsr-xr-x root root /var/lib/docker/rootfs/overlayfs/c34cadc54f5b2525114f9443d74b45c33b03ec0b53f5c2df46e11f641f1f855e/usr/bin/chage
-rwxr-sr-x root shadow /var/lib/docker/rootfs/overlayfs/c34cadc54f5b2525114f9443d74b45c33b03ec0b53f5c2df46e11f641f1f855e/usr/sbin/unix_chkpwd
-rwsr-xr-x root root /var/lib/containerd/io.containerd.snapshotter.v1.overlayfs/snapshots/2/fs/usr/bin/gpasswd
-rwsr-xr-x root root /var/lib/containerd/io.containerd.snapshotter.v1.overlayfs/snapshots/2/fs/usr/bin/passwd
-rwsr-xr-x root root /var/lib/containerd/io.containerd.snapshotter.v1.overlayfs/snapshots/2/fs/usr/bin/expiry
-rwsr-xr-x root root /var/lib/containerd/io.containerd.snapshotter.v1.overlayfs/snapshots/2/fs/usr/bin/chfn
-rwsr-xr-x root root /var/lib/containerd/io.containerd.snapshotter.v1.overlayfs/snapshots/2/fs/usr/bin/sudo
-rwsr-xr-x root root /var/lib/containerd/io.containerd.snapshotter.v1.overlayfs/snapshots/2/fs/usr/bin/chsh
-rwsr-xr-x root root /var/lib/containerd/io.containerd.snapshotter.v1.overlayfs/snapshots/2/fs/usr/bin/chage
-rwxr-sr-x root shadow /var/lib/containerd/io.containerd.snapshotter.v1.overlayfs/snapshots/2/fs/usr/sbin/unix_chkpwd
-rwsr-xr-- root messagebus /usr/lib/dbus-1.0/dbus-daemon-launch-helper
-rwsr-xr-x root root /usr/lib/openssh/ssh-keysign
-rwsr-xr-x root root /usr/lib/cargo/bin/sudo
-rwsr-xr-x root root /usr/lib/cargo/bin/su
-rwsr-xr-x root root /usr/bin/gpasswd
-rwsr-xr-x root root /usr/bin/newgrp
-rwsr-xr-x root root /usr/bin/passwd
-rwsr-xr-x root root /usr/bin/fusermount3
-rwxr-sr-x root shadow /usr/bin/expiry
-rwsr-xr-x root root /usr/bin/mount
-rwsr-xr-x root root /usr/bin/chfn
-rwsr-xr-x root root /usr/bin/ntfs-3g
-rwsr-xr-x root root /usr/bin/umount
-rwsr-xr-x root root /usr/bin/chsh
-rwsr-xr-x root root /usr/bin/sudo.ws
-rwxr-sr-x root mail /usr/bin/dotlockfile
-rwsr-xr-x root root /usr/bin/su
-rwxr-sr-x root crontab /usr/bin/crontab
-rwxr-sr-x root shadow /usr/bin/chage
-rwxr-sr-x root _ssh /usr/bin/ssh-agent
-r-xr-sr-x root postdrop /usr/sbin/postdrop
-r-xr-sr-x root postdrop /usr/sbin/postqueue
-rwxr-sr-x root shadow /usr/sbin/pam_extrausers_chkpwd
-rwxr-sr-x root shadow /usr/sbin/unix_chkpwd
```
