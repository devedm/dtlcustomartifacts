# Eclipse_Adoptium_OpenJDK8U-jdk_x64_windows_hotspot_8u345b01.ps1
# 
# silent install of OpenJDK on Windows
#
# Script by: christopher.crocker@quest.com
# Feb, 11 2023
#
#
# Using CLI install instructions found at:
# https://adoptium.net/installation/windows/
#
# msiexec /i <package>.msi ADDLOCAL=FeatureMain,FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome INSTALLDIR="c:\Program Files\Temurin\" /quiet
#

$url = "https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u345-b01/OpenJDK8U-jdk_x64_windows_hotspot_8u345b01.msi"
$destination = "C:\temp\OpenJDK8U-jdk_x64_windows_hotspot_8u345b01.msi"

Invoke-WebRequest $url -OutFile $destination

Start-Process -FilePath "msiexec.exe" -ArgumentList "/i $destination ADDLOCAL=FeatureMain,FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome INSTALLDIR='C:\Program Files\Eclipse Adoptium\jdk-8.0.345.1-hotspot\' /quiet" -Wait