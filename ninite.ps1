# Define variables for the download URL and installer file path
$downloadUrl = "https://ninite.com/7zip-chrome-notepadplusplus/ninite.exe"
$installerPath = "$env:USERPROFILE\Downloads\ninite.exe"

# Download the Ninite installer
Invoke-WebRequest -Uri $downloadUrl -OutFile $installerPath

# Install 7-Zip, Google Chrome, and Notepad++ silently using the Ninite installer
Start-Process -FilePath $installerPath -Wait
