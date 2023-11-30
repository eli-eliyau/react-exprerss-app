import React, { useEffect, useState } from "react";
import logo from "./logo.svg";
import "./App.css";
import axios from "axios";

function App() {
  const [name, setName] = useState("אין כלום");
  useEffect(() => {
  

    axios.get("http://51.20.188.95/api", {}).then((res) => {
      setName(res.data);
    }).catch((err)=>{
      console.log(err);
      
    })
    
    
  }, []);

  
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>{name}</p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
