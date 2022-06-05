const jwt = require("jsonwebtoken");
const JWT_SECRET = process.env.JWT_SECRET
/**
 * Debes de pasar el objecto del usario
 * @param {*} user
 */
const tokenSign = async (user) => {
  console.log('***************',JWT_SECRET, '.....', user.id)
  const sign = jwt.sign(
    {
      id: user.id
    },
    JWT_SECRET,
    {
      expiresIn: "2h",
    }
  );

  return sign
};

/**
 * Debes de pasar el token de session el JWT
 * @param {*} tokenJwt 
 * @returns 
 */
const verifyToken = async (tokenJwt) => {
  console.log('<<<<<<<', tokenJwt, '------')
    try{
        return jwt.verify(tokenJwt, JWT_SECRET)
    }catch(e){
        return null
    }
};

module.exports = { tokenSign, verifyToken };
