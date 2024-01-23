const jwt = require("jsonwebtoken")
let checkToken = (req, res, next)=> {
let token = req.res["authorization"];
token = token.slice(7, token.le)
}