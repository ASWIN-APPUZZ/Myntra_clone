require('dotenv').config();
const express = require('express');
const mongoose = require('mongoose')
const app = express();

mongoose.connect(`mongodb+srv://aswinajithkumarofficial:${process.env.mongodbPassword}@cluster0.2kbyxwo.mongodb.net/MynthraDB?retryWrites=true&w=majority`);


const connection = mongoose.connection;
connection.once("open", () => console.log("MongoDB Connection Successful "))

//middleware
app.use(express.json());
const loginRoutes = require("./routes/login.routes");
const userDetailsRoutes = require("./routes/user_details.routes");
app.use("/login",loginRoutes)
app.use("/user-details",userDetailsRoutes)

app.route("/").get((req, res) => {
    res.json("Hello ")
});


const PORT = 3000; // You can choose any available port number
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});