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

Store link for Debian Buster:
```
Invoke-WebRequest -Uri http://tlu.dl.delivery.mp.microsoft.com/filestreamingservice/files/93c14651-2ef3-4656-9856-ef5af5fa8b96?P1=1584307165"&"P2=402"&"P3=2"&"P4=RPo0ivOVb%2bp1Ggx7FFWGalKdiqfdGmu%2fc%2bOK5yHctdKvvkA6FCytNegrfCddQIp5iIZ1UmZlJSXotfCxa5%2fzng%3d%3d -OutFile debian.appx -UseBasicParsing
```

Run `Add-AppxPackage .\debian.appx`

#### Start Debian.

Run `debian`

### Unregister from WSL

Run `wsl --unregister Debian`
