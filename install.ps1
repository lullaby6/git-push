$installPath = "$env:LOCALAPPDATA\GitPush\bin"

if (!(Test-Path $installPath)) {
    New-Item -ItemType Directory -Path $installPath -Force
}

Invoke-WebRequest -Uri "https://github.com/lullaby6/GitPush/releases/download/v1.0.2/gp.exe" -OutFile "$installPath\gp.exe"

$envPath = [System.Environment]::GetEnvironmentVariable("Path", "User")
if ($envPath -notlike "*$installPath*") {
    [System.Environment]::SetEnvironmentVariable("Path", "$envPath;$installPath", "User")
}

Write-Host "Installation completed. Restart the terminal to use 'gp'."