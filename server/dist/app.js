"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = __importDefault(require("express"));
const cors_1 = __importDefault(require("cors"));
const node_path_1 = __importDefault(require("node:path"));
require("dotenv").config({ path: "../.env" });
const app = (0, express_1.default)();
const buildClient = node_path_1.default.join(__dirname, '../../client/build');
app.use(express_1.default.json());
app.use((0, cors_1.default)({ origin: "*", credentials: true }));
app.use(express_1.default.static(buildClient));
app.use("/api", (req, res) => {
    res.send("עובד ברוך השם");
});
app.get('*', (req, res) => {
    res.sendFile(node_path_1.default.join(__dirname, '../../client/build/index.html'), (err) => err && res.send(err));
});
app.listen(3001, () => {
    console.log("3001");
});
