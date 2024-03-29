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
const productDetailsRoutes = require("./routes/product_details.routes");
const categoryDetailsRoutes = require("./routes/category_details.routes")
app.use ("/uploads",express.static("./uploads"))
app.use("/login", loginRoutes)
app.use("/user-details", userDetailsRoutes)
app.use("/product-details", productDetailsRoutes)
app.use("/category-details", categoryDetailsRoutes)

app.route("/").get((req, res) => {
    res.json("Hello ")
});
const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});