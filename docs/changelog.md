# ChangeLog

Documents changes to networks, servers, and connected devices.

## 15OCT2026

### Changed

- Updated admin password for PiHole service on netone.
- Fixed fail2ban jail conf and started service on netone.

 ## 16OCT2026

 ### Added

 - Installed and configured Wikijs in Docker on netone.

 ## 17OCT2026

 ### Added

 - Installed and configured Gitea in Docker on netone.
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
 - Added webhook as a daemon on host netone.
 