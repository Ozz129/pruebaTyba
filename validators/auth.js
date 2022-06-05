const { check } = require("express-validator");
const validateResults = require("../utils/handleValidator")

const validatorRegister = [
    check("name")
    .exists()
    .notEmpty()
    .isLength({min:3, max:99}),
    check("user")
    .exists()
    .notEmpty(),
    check("password")
    .exists()
    .notEmpty()
    .isLength({min:3, max:15}),
    (req, res, next) => {
        return validateResults(req, res, next)
    }
];

const validatorLogin = [
    check("password")
    .exists()
    .notEmpty()
    .isLength({min:3, max:15}),
    check("user")
    .exists()
    .notEmpty(),
    (req, res, next) => {
        return validateResults(req, res, next)
    }
];

module.exports = { validatorRegister, validatorLogin};
