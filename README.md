# Windows_WSL_Debian

#### Open powershell from powerusers menu.

Press `WIN+X` to open powerusers menu.

Select `Windows Powershell (Admin)`.

Choose `YES` at prompt.

#### Enable Windows Optional Feature Microsoft-Windows-Subsystem-Linux.

Run 

<script src="https://gist.github.com/brettjrea/9953e7530aa9bbeda25a61e54e5f7f7f.js"></script>

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
