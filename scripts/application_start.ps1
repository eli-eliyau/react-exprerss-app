

# Navigate into the working directory where GitHub files are stored
Set-Location -Path "C:\project"

# Add npm and node to the path
$NVM_DIR = "$env:USERPROFILE\.nvm"
. "$NVM_DIR\nvm.ps1"  # loads nvm

cd "server"

# Install node modules
npm install

cd "dist"

# Start our node app in the background
Start-Process node -ArgumentList "app.js" -RedirectStandardOutput "app.out.log" -RedirectStandardError "app.err.log" -NoNewWindow -Wait
