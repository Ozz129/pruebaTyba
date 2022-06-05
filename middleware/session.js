const { handleHttpError } = require("../utils/handleError");
const { verifyToken } = require("../utils/handleJwt")
const User = require("../models/users")

const authMiddleware = async (req, res, next) => {
  try {

    if(!req.headers.authorization){
        handleHttpError(res, "NEED_SESSION", 401);
        return
    }

    const token = req.headers.authorization.split(' ').pop();
    const dataToken = await verifyToken(token);
    console.log(dataToken)
    if(!dataToken){
        handleHttpError(res, "NOT_PAYLOAD_DATA", 401);
        return
    }

    const query = {
      id:dataToken.id
    }

    const user = await User.findOne(query)
    req.user = user

    next()
    

  } catch (e) {
    console.log('E:--->', e)
    handleHttpError(res, "NOT_SESSION", 401);
  }
};

module.exports = authMiddleware;
