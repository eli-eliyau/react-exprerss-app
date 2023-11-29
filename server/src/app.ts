import express, { Request, Response } from "express";
import cors from "cors";
import path from "node:path";
require("dotenv").config({ path: "../.env" });


const app = express()
const buildClient = path.join(__dirname, '../../client/build')

app.use(express.json())
app.use(cors({ origin:[" http://localhost","http://51.20.188.95","http://ec2-51-20-188-95.eu-north-1.compute.amazonaws.com"], credentials: true }));
app.use(express.static(buildClient))


// app.get('/*', (req: Request, res: Response) => {
//   res.sendFile(path.join(__dirname, '../../client/build/index.html'), (err) =>
//     err && res.send(err))
// })
app.get('/api', (req: Request, res: Response) => {
  res.send("עובד ברוך השם")
})
app.listen(3001, () => {
  console.log("3001");
});
