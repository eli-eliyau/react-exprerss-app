

# # Navigate into the working directory where GitHub files are stored
# Set-Location -Path "C:\project"

# # Add npm and node to the path
# $NVM_DIR = "C:\Windows\System32\nvm"
# . "$NVM_DIR\nvm.ps1"  # loads nvm

# cd "C:\project\server"

# # Install node modules
# npm install

# cd "C:\project\server\dist"

# # Start our node app in the background
# Start-Process node -ArgumentList "app.js" -RedirectStandardOutput "app.out.log" -RedirectStandardError "app.err.log" -NoNewWindow -Wait
# Navigate into the working directory where GitHub files are stored
Set-Location -Path "C:\project"

# Set up nvm environment
$NVM_DIR = "C:\Users\Administrator\nvm"
. "$NVM_DIR\install.ps1"  # loads nvm

# cd "C:\project\server"
cd "project\server"

# Install node modules
npm install

# cd "C:\project\server\dist"
cd "dist"

# Start our node app in the background
Start-Process node -ArgumentList "app.js" -RedirectStandardOutput "app.out.log" -RedirectStandardError "app.err.log" -NoNewWindow -Wait
