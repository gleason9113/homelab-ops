## Server Configuration Checklist ##

### Purpose ###
This document lists basic configuration checks to make for any linux server being joined to the network.
Work in Progress - formatting is not final.

### Changes ###

**15OCT2026** - 

Created document.

### Security Configuration ###

**SSH**

Root Login Disabled:  
Password Authentication Disabled: 
Custom Port:  
Empty passwords disallowed:

**Firewall & Network**

UFW enabled:
Default policies enabled
 - Drop Incoming:
 - Allow Outgoing:
 Fail2ban active:
 Verify active jails:

Verify open ports match system documentation requirements:

**Packages & Upgrades**

Verify unattended upgrades enabled:
Verify apt repositories contain clean, trusted sources only:

**Users & Privileges**

Review accounts with elevated privileges - minimum necessary privileges allowed for each account:
Verify no user accounts have empty passwords:
Review service accounts with shells:
Verify password hashes are not globally readable:
Review binaries with elevated execution privileges - minimum necessary privileges allowed:










