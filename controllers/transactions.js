const { matchedData } = require("express-validator");
const  Transaction  = require("../models/transaction");
const { handleHttpError } = require("../utils/handleError");

/**
 * Get transactions list
 * @param {*} req
 * @param {*} res
 */
const getItems = async (req, res) => {
  try {
    const user = req.user;
    const data = await Transaction.findAll({});
    res.send({ data,  user });
  } catch (e) {
    console.log(e)
    handleHttpError(res, "ERROR_GET_ITEMS");
  }
};

/**
 * Save transaction
 * @param transaction
 */
const createItem = async (transaction) => {
  try {
    await Transaction.create(transaction);
  } catch (e) {
    console.log('Error: '+ e)
  }
}; 

 
module.exports = { getItems, createItem};
