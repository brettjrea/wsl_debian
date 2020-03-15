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

#### Install Debian for WSL Windows Store App.

```
Invoke-WebRequest -Uri https://aka.ms/wsl-debian-gnulinux -OutFile debian.appx -UseBasicParsing
```

Run `Add-AppxPackage .\debian.appx`

#### Start Debian.

Run `debian`

### Check release.
Run `cat /etc/os-release`

### Upgrade stretch to buster.

Run `wget --no-check-certificate https://raw.githubusercontent.com/brettjrea/Windows_WSL_Debian/master/buster.sh`

Run `bash buster.sh`
