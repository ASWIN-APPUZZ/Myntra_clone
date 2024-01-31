const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const lastCategoryDetails = Schema({
    "name": {
        type: String,
    },
})
const subCategoryDetails = Schema({
    "name": {
        type: String,
        required: true,
    },
    "imageUrl": {
        type: String,
        required: true,
    },
     "isExpandable": {
        type: Boolean,
        required: true,
    },
    lastCategory:[lastCategoryDetails] 
})
const CategoryDetails = Schema({

    "name": {
        type: String,
        required: true,
    },
    "desc": {
        type: String,
        required: true,
    },
    "imageUrl": {
        type: String,
        required: true,
    },
    "backgroundColor": {
        type: String,
        required: true,
    },
    subCategory:[subCategoryDetails],
})
module.exports = mongoose.model("categoryDetails",CategoryDetails)