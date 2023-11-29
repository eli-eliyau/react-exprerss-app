# Download and install nvm for Windows
Invoke-WebRequest https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.ps1 -OutFile install-nvm.ps1
.\install-nvm.ps1
Remove-Item install-nvm.ps1

# Set up nvm environment
. $HOME\.nvm\nvm.ps1

# Install Node.js
nvm install node

# Create our working directory if it doesn't exist
$DIR = "C:\project"
if (Test-Path $DIR -PathType Container) {
    Write-Output "${DIR} exists"
} else {
    Write-Output "Creating ${DIR} directory"
    New-Item -ItemType Directory -Path $DIR
}
