console.log("hello world!")

const express = require('express');
const { get } = require('http');
// same import: package in dart


const PORT = 3000;

const app = express();

//building an api

app.get('/',(req,res)=>{
res.json({name: "mohit"});

});

app.listen(PORT,"0.0.0.0" , () =>{

    console.log(`connected at port ${PORT} `);
});