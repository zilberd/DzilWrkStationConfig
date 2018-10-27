Set-ExecutionPolicy RemoteSigned
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex 
refreshenv
choco upgrade -y --allow-empty-checksums git sql-server-management-studio 7zip.install notepadplusplus.install putty.install sysinternals postman
