icacls "C:\inetpub\wwwroot" /grant "IIS_IUSRS:(OI)(CI)F"

cd "C:\inetpub\wwwroot\\"

npm install --production

node .\\app.js > .\\logs\\app.log 2>&1