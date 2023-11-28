
# Install nvm for Windows 
Invoke-WebRequest https://github.com/coreybutler/nvm-windows/releases/download/1.1.7/nvm-setup.zip -OutFile nvm-setup.zip
Expand-Archive nvm-setup.zip -DestinationPath C:\nvm 
C:\nvm\nvm-setup.exe /S

# Install node 
C:\nvm\nvm.exe install node 

# Set node version to use
C:\nvm\nvm.exe use node

# Create app directory if it doesn't exist
$DIR = "C:\project"
If( !(Test-Path $DIR)) {
    Write-Output "${DIR} does not exist, creating it"  
    New-Item -ItemType Directory -Path $DIR
} Else {
    Write-Output "${DIR} already exists"
}
