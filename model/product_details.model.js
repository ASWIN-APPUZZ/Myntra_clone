const mongoose = require("mongoose");
const Schema = mongoose.Schema;

const ProductDetails = Schema({
    "name": {
        type: String,
        required: true,
    },
    "desc": {
        type: String,
        required: true,
    },
    "wishlisted": {
        type: String,
        required: true,
    },
    "actual_price": {
        type: String,
        required: true,
    },
    "discounted_price": {
        type: String,
        required: true,
    },
    "discound": {
        type: String,
        required: true,
    },
    "category": {
        type: String,
        required: true,
    },
    "sub_category": {
        type: String,
        required: true,
    },
    "type": {
        type: String,
        required: true,
    },
    "genere": {
        type: String,
        required: true,
    },
    "brand": {
        type: String,
        required: true,
    },
    "image_url": {
        type: String,
        required: true,
    },
    "rating": {
        type: String,
    },
    "no_of_reviews": {
        type: String,
    },
})
module.exports= mongoose.model("ProductDetails",ProductDetails);