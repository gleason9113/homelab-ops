# Document Sync Pipeline

## Purpose: This document describes the documentation pipeline from my private repo to my public-facing github repo.

## Data Flow

```text

Local working copy -> Gitea repo (Internal SSOT) -|-> webhook -> sanitize script (removes hostname, IPs, etc) -> Github repo
                                                  |
                                                  v
                                          Wikijs (local kbase)

```

## Architecture

The SSOT for network documentation is the internal Gitea instance.  This is integrated with a local instance of Wiki.js providing an internal kbase pulled from and synced with the Gitea repo.

The Gitea instance is configured to call a webhook via a listening daemon.  This in turn triggers a sanitization script that removes (hopefully!):

* **Host & Subnet Masking:** Replaces internal IP addresses and private host and domain names with standardized placeholders.

* **Credential Scrubbing:** Scans for and strips potential API keys, secret tokens, and environmental configuration variables (.env).

* **Identity Protection:** Obfuscates sensitive hostnames, hardware MAC addresses, and specific internal device identities.

and finally pushes the sanitized documents to the public Github repo.

## Error Handling

If the sanitization script encounters an unhandled exception the process halts without pushing to the public repo.

