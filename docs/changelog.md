# ChangeLog

Documents changes to networks, servers, and connected devices.

## 15OCT2026

### Changed

- Updated admin password for PiHole service on example.host.
- Fixed fail2ban jail conf and started service on example.host.

 ## 16OCT2026

 ### Added

 - Installed and configured Wikijs in Docker on example.host.

 ## 17OCT2026

 ### Added

 - Installed and configured Gitea in Docker on example.host.
 - Cloned docs repo over and verified visibility in browser.
 - Configured Wikijs to pull from local Gitea repo.
 - Pointed local repo to Gitea repo.

 ## 18OCT2026

 ### Changed
 
 - Still working on the docs pipeline.  Setting up ssh auth all the way through.
 - Pipeline close to ready.  Testing.
 - Getting close.  Test 5.
 - Closer.  Test 6.
 - Webhook restarted - test 7.
 - Step by step.  Test 8.
 - Webhook appears to be working.  Pushing test 9.

 - Updated Gitea instance to use ssh authentication.
 - Wrote script to sanitize and sync repos with public github repo.
 - Adjusted configurations until I was successful in pushing from my local repo all the way to the github repo.
 - Added webhook as a daemon on host example.host.
 
 ## 19OCT2026

- Network:  Assigned SW_Primary Port 6 to VLAN 2 (mgmt)
- Network:  Added hostname example.host.internal to local DNS records.
- Verified internal browsers now correctly resolve example.host.internal addresses. My bookmarks look so much nicer now.
- Added hostname nettwo.internal to local DNS records.
 