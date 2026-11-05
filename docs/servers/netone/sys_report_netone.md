# System Documentation Report

**Generated On:** Mon Oct 19 05:29:23 PM UTC 2026
**Target Host:** example.host

---

## 1. Core System Metadata

| Parameter | Value |
| :--- | :--- |
| **Hostname** | example.host |
| **FQDN** | example.host |
| **OS Distribution** | Ubuntu 26.04.1 LTS |
| **Kernel Version** | 7.0.0-29-generic |
| **Architecture** | x86_64 |
| **Hypervisor Status** | none |
| **System Uptime** | up 10 weeks, 1 day, 20 hours, 11 minutes |

---

## 2. Hardware Resources

| Parameter | Value |
| :--- | :--- |
| **CPU Model** | Intel(R) Core(TM) i5-6500T CPU @ 2.50GHz |
| **CPU Topology (Sockets / Cores / Threads)** | 1 / 4 / 4 |
| **Total Memory** | 15Gi |
| **Default Network Gateway** | 192.xx.xx.xx |

---

## 3. Storage & Filesystems

| Mount Point | Device | Type | Total Size | Used | Available | Use % |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| / | /dev/mapper/ubuntu--vg-ubuntu--lv | ext4 | 98G | 12G | 81G | 13% |
| /sys/firmware/efi/efivars | efivarfs | efivarfs | 128K | 94K | 30K | 77% |
| /boot | /dev/sda2 | ext4 | 2.0G | 184M | 1.7G | 11% |
| /boot/efi | /dev/sda1 | vfat | 1.1G | 6.4M | 1.1G | 1% |
| /var/lib/docker/rootfs/overlayfs/c34cadc54f5b2525114f9443d74b45c33b03ec0b53f5c2df46e11f641f1f855e | overlay | overlay | 98G | 12G | 81G | 13% |
| /var/lib/docker/rootfs/overlayfs/2412d269d45935896cdc7b44166c0d55d45ff19773f281ce5421e49c99a7fc04 | overlay | overlay | 98G | 12G | 81G | 13% |
| /var/lib/docker/rootfs/overlayfs/9ea6d542b5c69d163f15b5722ae37e9906e1e69ca2a3f266c7be32edad3ddbf3 | overlay | overlay | 98G | 12G | 81G | 13% |
| /var/lib/docker/rootfs/overlayfs/ca25c86807800978a6d28457386b0b4ffa74d31f229c0f29dba80f15ecca900e | overlay | overlay | 98G | 12G | 81G | 13% |
| /var/lib/docker/rootfs/overlayfs/5e5c96cf4bb15a8b3034726946de35080edf7a3eaf4160b0b8fc1664360e605b | overlay | overlay | 98G | 12G | 81G | 13% |
| /var/lib/docker/rootfs/overlayfs/c052bc33b1103d4300bd143812029029506400f722dc6a6788d90fdbef59b142 | overlay | overlay | 98G | 12G | 81G | 13% |

---

## 4. Active Listening Services

| Service/Process | Protocol | Port | Bind Address |
| :--- | :--- | :--- | :--- |
| docker-proxy | udp | 51820 | 0.0.0.0 |
| docker-proxy | udp | 53 | 0.0.0.0 |
| systemd-network | udp | 68 | 192.xx.xx.xx%eno1 |
| chronyd | udp | 323 | 127.0.0.1 |
| chronyd | udp | 323 | [::1] |
| docker-proxy | tcp | 8080 | 0.0.0.0 |
| docker-proxy | tcp | 80 | 0.0.0.0 |
| docker-proxy | tcp | 53 | 0.0.0.0 |
| docker-proxy | tcp | 222 | 0.0.0.0 |
| docker-proxy | tcp | 3000 | 0.0.0.0 |
| docker-proxy | tcp | 51821 | 0.0.0.0 |
| sshd | tcp | 2291 | 0.0.0.0 |
| webhook | tcp | 9000 | * |
| sshd | tcp | 2291 | [::] |
