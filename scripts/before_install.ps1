
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

# Configure PEM certificate
$pemFile = "C:\Users\og1\OneDrive\שולחן העבודה\windows-kp.pem"

# Decrypt PEM file if needed
$securePassword = ConvertTo-SecureString -String "YOUR_PASSPHRASE" -AsPlainText -Force
$pemContent = Get-Content $pemFile | ConvertFrom-SecureString $securePassword

# Import PEM certificate  
$pemCert = New-Object System.Security.Cryptography.X509Certificates.X509Certificate2
$pemCert.Import($pemContent)

# Use PEM certificate to connect
Connect-WebSite -Uri "https://www.yoursite.com" -Certificate $pemCert
