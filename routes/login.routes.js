const express = require('express');
const router = express.Router();
const User = require("../model/user.model");
const jwt = require('jsonwebtoken');
const bodyParser = require('body-parser');

router.use(bodyParser.json());

router.post("/", (req, res) => {
    const mobileNo = req.body.mobileNo;

    if (!mobileNo) {
        return res.status(400).json({ error: "Mobile number is required" });
    }

    User.findOne({ mobileNo: mobileNo })
        .exec()
        .then((result) => {
            if (result !== null) {
                // User exists, perform login
                sendToken(mobileNo, res, "Login Successful");
                console.log("Login");
            } else {
                // User does not exist, perform registration
                const user = new User({
                    mobileNo: mobileNo
                });

                // Save the new user to the database
                user.save()
                    .then(() => {
                        sendToken(mobileNo, res, "Registration Successful");
                    })
                    .catch((saveError) => {
                        console.error("Error during user registration:", saveError);
                        res.status(500).json({ error: "Error during user registration" });
                    });

                console.log("Register");
            }
        })
        .catch((err) => {
            console.error("Error during findOne:", err);
            res.status(500).json({ error: "Internal Server Error" });
        });
});


// Function to send JWT token as a response
const sendToken = (mobileNo, res, message) => {
    let token = jwt.sign({ mobileNo: mobileNo }, "Key");
    res.json({ token: token, msg: message });
}

module.exports = router;
