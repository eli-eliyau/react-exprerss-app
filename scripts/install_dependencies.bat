# Install Node.js
[Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls" 
Invoke-WebRequest https://nodejs.org/dist/v16.19.0/node-v16.19.0-x64.msi -OutFile node-install.msi
Start-Process msiexec.exe -Wait -ArgumentList '/I node-install.msi /quiet'

# Create working directory
$workingDir = "C:\inetpub\wwwroot\\"
If(!(test-path $workingDir))
{
    New-Item -ItemType Directory -Force -Path $workingDir
}

# Install npm packages

Set-Location $workingDir
npm install