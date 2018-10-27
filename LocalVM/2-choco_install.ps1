Set-ExecutionPolicy RemoteSigned
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex 
refreshenv


#choco install -y --allow-empty-checksums git GoogleChrome visualstudiocode sql-server-management-studio adobereader 7zip.install notepadplusplus.install putty.install sysinternals postman docker-for-windows

choco install -y --allow-empty-checksums GoogleChrome visualstudiocode 7zip.install notepadplusplus.install putty.install sysinternals postman docker-for-windows

Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase

Dism.exe /online /Cleanup-Image /SPSuperseded
