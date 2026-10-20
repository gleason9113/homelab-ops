Markdown

# System Documentation Report

**Generated On:** Thu Oct 15 09:15:23 PM UTC 2026
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
| **System Uptime** | up 9 weeks, 4 days, 23 hours, 57 minutes |

---

## 2. Hardware Resources

| Parameter | Value |
| :--- | :--- |
| **CPU Model** | Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz |
| **CPU Topology (Sockets / Cores / Threads)** | 1 / 4 / 4 |
| **Total Memory** | 15Gi |
| **Default Network Gateway** | `192.168.X.1` |

---

## 3. Storage & Filesystems

| Mount Point | Device | Type | Total Size | Used | Available | Use % |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| / | /dev/mapper/ubuntu--vg-ubuntu--lv | ext4 | 98G | 8.9G | 85G | 10% |
| /sys/firmware/efi/efivars | efivarfs | efivarfs | 128K | 94K | 30K | 77% |
| /boot | /dev/sda2 | ext4 | 2.0G | 184M | 1.7G | 11% |
| /boot/efi | /dev/sda1 | vfat | 1.1G | 6.4M | 1.1G | 1% |

---

## 4. Active Listening Services

| Service/Process | Protocol | Port | Bind Address |
| :--- | :--- | :--- | :--- |
| docker-proxy | udp | 51820 | `0.0.0.0` |
| docker-proxy | udp | 53 | `0.0.0.0` |
| systemd-network | udp | 68 | `192.168.X.20%eno1` |
| chronyd | udp | 323 | `127.0.0.1` |
| chronyd | udp | 323 | `[::1]` |
| docker-proxy | tcp | 80 | `0.0.0.0` |
| docker-proxy | tcp | 53 | `0.0.0.0` |
| docker-proxy | tcp | 51821 | `0.0.0.0` |
| sshd | tcp | 2291 | `0.0.0.0` |
| sshd | tcp | 2291 | `[::]` |