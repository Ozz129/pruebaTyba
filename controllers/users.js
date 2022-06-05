const { matchedData } = require("express-validator");
const { encrypt, compare } = require("../utils/handlePassword");
const { tokenSign } = require("../utils/handleJwt");
const { handleHttpError } = require("../utils/handleError");
const User  = require("../models/users");
const transactionControll = require('./transactions');
/**
 * Save an user on Data Base
 * @param {*} req 
 * @param {*} res 
 */
const registerCtrl = async (req, res) => {
  try{
    req = matchedData(req);
    const password = await encrypt(req.password);
    const body = { ...req, password };
    const dataUser = await User.create(body);
    dataUser.set("password", undefined, { strict: false });
  
    const data = {
      token: await tokenSign(dataUser),
      user: dataUser,
    };

    // saving transaction
    const transaction = {
      'endpoint': 'api/auth/register',
      'method': 'POST'
    }

    transactionControll.createItem(transaction);

    res.status(201)
    res.send({ data });
  }catch(e){
    console.log(e)
    handleHttpError(res, "ERROR_REGISTER_USER")
  }
};

/**
 * User loguin
 * @param {*} req 
 * @param {*} res 
 */
const loginCtrl = async (req, res) => {
  try{
    req = matchedData(req);
    const user = await User.findOne({where:{user:req.user}})

    if(!user){
      handleHttpError(res, "USER_NOT_EXISTS", 404);
      return
    }

    const hashPassword = user.get('password');

    const check = await compare(req.password, hashPassword)

    if(!check){
      handleHttpError(res, "PASSWORD_INVALID", 401);
      return
    }

    user.set('password', undefined, {strict:false})
    const data = {
      token: await tokenSign(user),
      user
    }

    // saving transaction
    const transaction = {
      'endpoint': 'api/auth/login',
      'method': 'POST'
    }
  
    transactionControll.createItem(transaction);
    res.send({data})


  }catch(e){
    console.log(e)
    handleHttpError(res, "ERROR_LOGIN_USER")
  }
}

module.exports = { registerCtrl, loginCtrl };
