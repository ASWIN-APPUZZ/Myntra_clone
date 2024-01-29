const express = require('express');
const middleware = require('../middleware');
const router = express.Router(); 
const multer = require('multer');
const csvFile =require("csvtojson");

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, "./uploads");
    },
    filename: (req, file, cb) => {
        cb(null, file.originalname); // Corrected typo
    }
});

const upload = multer({ storage });

router.post("/uploadAll", upload.single("csvFile"), async (req, res) => {
    const jsonArray = await csvFile().fromFile(req.file.path);
    res.json(jsonArray);
});

module.exports = router;