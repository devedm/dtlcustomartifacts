# Requires TLS 1.2, run this command to ensure PowerShell uses TLS 1.2: 
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls11 -bor [System.Net.SecurityProtocolType]::Tls12;

# Create User Affinity File for Quest Kace
New-Item -ItemType File -Path "c:\questowner.txt" -Value "christopher.crocker@quest.com"

# Main Command to Install
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://isops-static.quest.com/downloads/quest/kace/smaagent/win/Install_KSMAAgent_Lab.ps1.txt'))