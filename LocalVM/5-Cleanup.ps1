Set-ExecutionPolicy RemoteSigned

Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase

Dism.exe /online /Cleanup-Image /SPSuperseded
