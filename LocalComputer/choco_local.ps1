Set-ExecutionPolicy RemoteSigned
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex 
refreshenv
choco install -y --allow-empty-checksums adobereader 7zip.install notepadplusplus.install putty.install