# Give permissions to express-app directory  
icacls "C:\project" /grant Administrator:F

# Navigate to working directory
cd "C:\project\server" 

# Add node and npm to path
$env:Path += ";C:\Program Files\nodejs;"  

# Install node modules
npm install

cd ..\dist

# Start node app in background  
Start-Process node app.js -RedirectStandardOutput .\app.out.log -RedirectStandardError .\app.err.log -WindowStyle Hidden
