---
title: WSL_Debian
layout: page
permalink: /WSL_Debian/
repository_weight: 2
---

# Windows_WSL_Debian

---

### 1. Open Windows Powershell from powerusers menu.

Press <kbd>WIN</kbd>+<kbd>X</kbd> then <kbd>A</kbd> to open Windows Powershell (Admin) from powerusers menu.

Press <kbd>ALT</kbd>+<kbd>Y</kbd> to select <kbd>Yes</kbd> at the UAC prompt.

---

### 2. Enable Windows Optional Feature Microsoft-Windows-Subsystem-Linux.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### 3. Install Debian (stretch).

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
Invoke-WebRequest -Uri https://aka.ms/wsl-debian-gnulinux -OutFile debian.appx -UseBasicParsing
```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### 4. Add Debian package.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```Add-AppxPackage .\debian.appx```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>

---

### 5. Start Debian.

Type into Windows Powershell:

`debian` 

and press <kbd>Enter</kbd>

---

### 6. Upgrade to Buster with script.

Copy the following with <kbd>CTRL</kbd>+<kbd>C</kbd>

```
wget --no-check-certificate https://raw.githubusercontent.com/brettjrea/Scripts_Fix/master/fixscripts.sh &&
wget --no-check-certificate https://raw.githubusercontent.com/brettjrea/Windows_WSL_Debian/master/buster.sh &&
bash fixscripts.sh &&
sudo bash buster.sh
```

and paste into Powershell with <kbd>Right Mouse Click</kbd> and press <kbd>Enter</kbd>
