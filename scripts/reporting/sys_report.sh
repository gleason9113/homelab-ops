#!/bin/bash

# Work in progress: This script is a work in progress and may not be production-ready.
# Gather system info

host_name=$(hostname)
fq_name=$(hostname --fqdn)
kernel_ver=$(lsb_release -d | cut -f2)
kernel=$(uname -r)
architecture=$(uname -m)
uptime=$(uptime -p 2>/dev/null || awk '{
    days=int($1/86400); 
    hours=int(($1%86400)/3600); 
    mins=int(($1%3600)/60); 
    if (days>0) printf "%d days, ", days; 
    printf "%d hours, %d minutes\n", hours, mins
}' /proc/uptime)
cpu_model=$(grep -m 1 'model name' /proc/cpuinfo | cut -d':' -f2 | xargs)
sockets=$(lscpu -p=SOCKET | grep -v '^#' | sort -u | wc -l)
cores_per_socket=$(lscpu | awk -F': +' '/^Core\(s\) per socket:/ {print $2}')
cores=$(( sockets * cores_per_socket ))
threads=$(lscpu | awk -F': +' '/^CPU\(s\):/ {print $2}')
cpu_info="Sockets / Cores / Threads: $sockets / $cores / $threads" 
total_mem=$(free -h | awk 'NR==2 {print $2}')
vm_status=$(systemd-detect-virt)
default_gateway=$(ip route | grep default | awk '{print $3}')

storage_table=$(df -h --output=target,source,fstype,size,used,avail,pcent -x devtmpfs -x tmpfs | \
awk 'NR==1 {print "| Mount Point | Device | Type | Total Size | Used | Available | Use % |\n| :--- | :--- | :--- | :--- | :--- | :--- | :--- |"} \
     NR>1 {print "| " $1 " | " $2 " | " $3 " | " $4 " | " $5 " | " $6 " | " $7 " |"}')

active_svc_table=$(ss -tulnp | awk '
NR==1 {
    print "| Service/Process | Protocol | Port | Bind Address |"
    print "| :--- | :--- | :--- | :--- |"
}
NR>1 {
    proto=$1
    split($5, addr_parts, ":")
    port=addr_parts[length(addr_parts)]
    bind_addr=substr($5, 1, length($5)-length(port)-1)

    proc_name="Unknown"
    if (match($7, /"([^"]+)"/, arr)) {
        proc_name=arr[1]
    }

    print "| " proc_name " | " proto " | " port " | " bind_addr " |"
}')

# Format and generate Markdown report

report_file="sysrep_${host_name}.md"

cat << EOF > "${report_file}"
# System Documentation Report

**Generated On:** $(date -u)
**Target Host:** ${host_name}

---

## 1. Core System Metadata

| Parameter | Value |
| :--- | :--- |
| **Hostname** | ${host_name} |
| **FQDN** | ${fq_name} |
| **OS Distribution** | ${kernel_ver} |
| **Kernel Version** | ${kernel} |
| **Architecture** | ${architecture} |
| **Hypervisor Status** | ${vm_status} |
| **System Uptime** | ${uptime} |

---

## 2. Hardware Resources

| Parameter | Value |
| :--- | :--- |
| **CPU Model** | ${cpu_model} |
| **CPU Topology (Sockets / Cores / Threads)** | ${sockets} / ${cores} / ${threads} |
| **Total Memory** | ${total_mem} |
| **Default Network Gateway** | ${default_gateway} |

---

## 3. Storage & Filesystems

${storage_table}

---

## 4. Active Listening Services

${active_svc_table}
EOF

echo "Report generated"
