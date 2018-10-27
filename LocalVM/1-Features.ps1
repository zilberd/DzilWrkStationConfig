Set-ExecutionPolicy RemoteSigned

#windows features
# List all windowsfeatures with Get-WindowsOptionalFeature -Online
$features = @(
    "Microsoft-Windows-Subsystem-Linux",
	"Microsoft-Hyper-V-All"
)
foreach ($task in $features) {
	Enable-WindowsOptionalFeature -Online -FeatureName $task
}
