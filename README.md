---
layout: post
title:  "Welcome to Jekyll!"
date:   2020-03-11 14:21:16 -0400
categories: jekyll update
---

# Windows_WSL_Debian

#### Open powershell from powerusers menu.

Press `WIN+X` to open powerusers menu.

Select `Windows Powershell (Admin)`.

Choose `YES` at prompt.

#### Enable Windows Optional Feature Microsoft-Windows-Subsystem-Linux.

Run 

```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

#### Install Debian.

Link for Debian Stretch:
```
Invoke-WebRequest -Uri https://aka.ms/wsl-debian-gnulinux -OutFile debian.appx -UseBasicParsing
```

Run `Add-AppxPackage .\debian.appx`

#### Start Debian.

Run `debian`

### Upgrade to Buster.

```
wget --no-check-certificate https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh &&
wget --no-check-certificate https://raw.githubusercontent.com/brettjrea/Windows_WSL_Debian/master/buster.sh &&
bash fixscripts.sh &&
sudo bash buster.sh
```
