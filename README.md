---
title: WSL_Debian
layout: page
permalink: /WSL_Debian/
repository_weight: 2
---

# Windows_WSL_Debian

### Open Windows Powershell from powerusers menu.

Press <kbd>WIN</kbd>+<kbd>X</kbd> then <kbd>A</kbd> to open Windows Powershell (Admin) from powerusers menu.

Press <kbd>ALT</kbd>+<kbd>Y</kbd> to select <kbd><samp>Yes</samp></kbd> at the UAC prompt.

### Enable Windows Optional Feature Microsoft-Windows-Subsystem-Linux.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

and paste into Powershell with <kbd>CTRL</kbd>+<kbd>V</kbd> and press <kbd><samp>Enter</samp></kbd>

### Install Debian (stretch).

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
Invoke-WebRequest -Uri https://aka.ms/wsl-debian-gnulinux -OutFile debian.appx -UseBasicParsing
```

and paste into Powershell with <kbd>CTRL</kbd>+<kbd>V</kbd> and press <kbd><samp>Enter</samp></kbd>

### Add Debian package.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```Add-AppxPackage .\debian.appx```

and paste into Powershell with <kbd>CTRL</kbd>+<kbd>V</kbd> and press <kbd><samp>Enter</samp></kbd>

#### Start Debian.

Type:

`debian` 

and press <kbd><samp>Enter</samp></kbd>

### Upgrade to Buster.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
wget --no-check-certificate https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh &&
wget --no-check-certificate https://raw.githubusercontent.com/brettjrea/Windows_WSL_Debian/master/buster.sh &&
bash fixscripts.sh &&
sudo bash buster.sh
```

and paste into Powershell with <kbd>CTRL</kbd>+<kbd>V</kbd> and press <kbd><samp>Enter</samp></kbd>
