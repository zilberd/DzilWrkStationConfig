Set-ExecutionPolicy RemoteSigned
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex 
refreshenv

#windows features
# List all windowsfeatures with Get-WindowsOptionalFeature -Online
$features = @(
    "Microsoft-Windows-Subsystem-Linux",
	"Microsoft-Hyper-V-All"
)
foreach ($task in $features) {
	Enable-WindowsOptionalFeature -Online -FeatureName $task
}

choco install -y --allow-empty-checksums git GoogleChrome visualstudiocode sql-server-management-studio adobereader 7zip.install notepadplusplus.install putty.install sysinternals postman docker-for-windows

Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase

Dism.exe /online /Cleanup-Image /SPSuperseded
