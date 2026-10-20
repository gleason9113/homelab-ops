# Notes on projects, development, and so forth #

## Purpose ##

This is not a technical document.  This is, as the title implies, more along the lines of a project diary.
The purpose is to document my thinking as projects develop and so forth.

This section specifically is a new thing to me, so I expect the format to evolve over time, and I don't know if I will include it in the repo yet.

### 15OCT2026

Key points:

I have just been laid off from my position at Allied Digital, providing IT services for Genentech, Inc.
This repo is a resume portfolio version of my private docs repo.
I have begun the process of updating, sanitizing, and transferring documentation from my private repo to this one.

Today I started the process.  I still need to create a readme, but I have my network hardware inventoried in a markdown file.
I have documentation created for my netone server and plan to spend tomorrow configuring my nettwo ser - scratch that.

Tomorrow I am going for a hike, then setting up a Gitea > github docs pipeline. This will give me yet another portfolio entry.

Also - maybe business idea:  E2EE email client.  Vue/Electron-Tauri front-end, standard email server stack - only handles encrypted payloads.  Or other agentic-oreinted services: captchas, ETC.

### 16OCT2026

Got Wikijs up in a container on netone.

Next steps are Gitea and a pipeline to the public resume repo.

### 17OCT2026

My documentation pipeline is nearly set.  My local repo now points to my git instance on netone, which my wiki now pulls directly from.  I need to create the sanitation script and pipeline to the public github repo and this will be a nicely automated setup.  Tomorrow's priority task is creating the readme, though.  That and whatever configurations I've been slacking on (IOT devices, mostly).

Next projects are: finalize netone, configure nettwo, set up pihole/network monitoring/backup netone services on nettwo.

### 18OCT2026

Goals today are pretty simple - complete the pipeline:

Gitea -> Sanitizer -> public repo.  Get a functional README created.  Let's go.

### 19OCT2026

Updates from yesterday - success.  The doc sync pipeline seems fully functional.  This file is syncing correctly to the internal repo and is removed from the external.  

I have put together a rudimentary README as well, so I think I can go live with the public repo.
