Write-Host "Installing GitPush..."

$installPath = "$env:LOCALAPPDATA\gp\bin"

if (!(Test-Path $installPath)) {
    New-Item -ItemType Directory -Path $installPath -Force | Out-Null
}

Write-Host "Downloading gp.exe..."
Invoke-WebRequest `
    -Uri "https://github.com/lullaby6/GitPush/releases/download/v1.0.2/gp.exe" `
    -OutFile "$installPath\gp.exe"

Write-Host "Adding to PATH if necessary..."
$userPath = [Environment]::GetEnvironmentVariable("Path","User")

if ($userPath -notlike "*$installPath*") {
    [Environment]::SetEnvironmentVariable("Path",$userPath + ";$installPath","User")
    Write-Host "PATH updated. Restart the terminal to use 'gp'."
} else {
    Write-Host "PATH already configured."
}

Write-Host "Installed! Use command: gp -c \"message\" -b branch"
