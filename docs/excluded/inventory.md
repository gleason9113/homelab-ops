# Hardware Inventory

This document tracks information about network infrastructure.

---

## Inventory

| Device Role | Model           | Name | IP Address                         | MAC Address         |
| :--- |:----------------|:-----|:-----------------------------------|:--------------------|
| **Modem** | Netgear CM3000  | -    | `192.168.100.1`                    | `28:94:01:92:63:68` |
| **Router** | UniFi UCG Ultra | `Gateway` | `192.168.1.1`                      | `0c:ea:14:79:91:bd` |
| **Switch** | USW Ultra 60W   | `SW_Primary` | `192.168.2.2`                     | `9c:05:d6:e0:7d:6a` |
| **Switch** | USW Ultra 60W   | `SW_Secondary` | `192.168.2.3`                     | `f4:e2:c6:af:58:ce` |
| **Access Point** | Unifi 6+  | `BR_AP` | `192.168.2.10` | `28:70:4e:c5:17:87` |
| **Access Point** | UniFi 6+        | `LR_AP` | `192.168.1.10` | `28:70:4e:c5:21:d3` |

## Device Details

### Modem
* **Model:** Netgear CM3000
* **S/N:** `6RA24C7AD28CD`
* **HW Version:** 1.01
* **Cable FW Version:** 6.01.04
* **Admin Interface:** `192.168.100.1`

### Router
* **Model:** UniFi Cloud Gateway Ultra (UCG Ultra)
* **Name:** `Gateway`
* **Device Version:** 5.1.12
* **WAN1 MAC:** `0c:ea:14:79:91:c1`

### Switch
* **Model:** UniFi Switch Ultra 60W (USW Ultra 60W)
* **Name:** `SW_Primary`
* **Device Version:** 2.1.8
* **Uplink:** Port 7 $\rightarrow$ `Gateway` Port 1

### Switch
* **Model:** UniFi Switch Ultra 60W (USW Ultra 60W)
* **Name:** `SW_Secondary`
* **Device Version:** 2.1.8
* **Uplink:** Port 7 $\rightarrow$ `Gateway` Port 2

### Access Point
* **Model:** UniFi U6+
* **Name:** `LR_AP`
* **Location:** Living Room
* **Uplink:** `SW_Primary` Port 2
* **Device Version:** 6.7.41
* **WiFi Networks:** All
* **IPv6 Address:** `fd53:5073:c6af:2215:2a70:4eff:fec5:21d3`
* **IPv6 Link Local:** `fe80::2a70:4eff:fec5:1787`


### Access Point
* **Model:** UniFi U6+
* **Name:** `BR_AP`
* **Location:** Bedroom
* **Uplink:** `SW_Primary` Port 3
* **Device Version:** 6.7.41
* **WiFi Networks:** All
* **IPv6 Address:** `fd53:5073:c6af:2215:2a70:4eff:fec5:21d3`
* **IPv6 Link Local:** `fe80::2a70:4eff:fec5:21d3`
