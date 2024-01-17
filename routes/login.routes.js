const express = require("express");
const router = express.Router();
const User = require("../model/user.model")

router.route("/").post((req,res)=>{
    res.json("Hey There");
    console.log("Inside Login")
}) 

module.exports=router