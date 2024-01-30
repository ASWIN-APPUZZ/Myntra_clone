const express = require('express');
const middleware = require('../middleware');
const router = express.Router();
const multer = require('multer');
const csvFile = require("csvtojson");
const ProductDetails = require("../model/product_details.model");

const storage = multer.diskStorage({
    destination: (req, file, cb) => { cb(null, "./uploads"); },
    filename: (req, file, cb) => {
        cb(null, file.originalname);
    }
});
const upload = multer({ storage });

router.post("/uploadAll", upload.single("csvFile"), async (req, res) => {
    try {
        const jsonArray = await csvFile().fromFile(req.file.path);
        const result = await ProductDetails.insertMany(jsonArray);
        res.json("Added Successfully");
    } catch (error) {
        console.error(error);
        res.status(500).json(error);
    }
});

router.get("/getAll", async (req, res) => {
    try {
        const result = await ProductDetails.find({});
        res.json({ data: result });
    } catch (error) {
        console.error(error);
        res.status(500).json(error);
    }
});

module.exports = router;
