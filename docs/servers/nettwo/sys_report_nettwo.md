# System Documentation Report

**Generated On:** Tue Oct 27 09:54:04 PM UTC 2026
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
| **Hypervisor Status** | none |
| **System Uptime** | up 3 weeks, 2 days, 3 hours, 47 minutes |

---

## 2. Hardware Resources

| Parameter | Value |
| :--- | :--- |
| **CPU Model** | Intel(R) Core(TM) i5-6400T CPU @ 2.20GHz |
| **CPU Topology (Sockets / Cores / Threads)** | 1 / 4 / 4 |
| **Total Memory** | 15Gi |
| **Default Network Gateway** | 192.xx.xx.xx |

---

## 3. Storage & Filesystems

| Mount Point | Device | Type | Total Size | Used | Available | Use % |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| / | /dev/mapper/ubuntu--vg-ubuntu--lv | ext4 | 98G | 7.0G | 86G | 8% |
| /sys/firmware/efi/efivars | efivarfs | efivarfs | 128K | 76K | 48K | 62% |
| /boot | /dev/sda2 | ext4 | 2.0G | 97M | 1.7G | 6% |
| /boot/efi | /dev/sda1 | vfat | 1.1G | 6.4M | 1.1G | 1% |

---

## 4. Active Listening Services

| Service/Process | Protocol | Port | Bind Address |
| :--- | :--- | :--- | :--- |
| systemd-resolve | udp | 53 | 127.0.0.54 |
| systemd-resolve | udp | 53 | 127.0.0.53%lo |
| systemd-network | udp | 68 | 192.xx.xx.xx%eno1 |
| chronyd | udp | 323 | 127.0.0.1 |
| chronyd | udp | 323 | [::1] |
| systemd-resolve | tcp | 53 | 127.0.0.54 |
| systemd-resolve | tcp | 53 | 127.0.0.53%lo |
| sshd | tcp | 2291 | 0.0.0.0 |
| sshd-session | tcp | 6010 | 127.0.0.1 |
| sshd-session | tcp | 6010 | [::1] |
| sshd | tcp | 2291 | [::] |
