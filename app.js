require("dotenv").config();
const express = require("express");
const cors = require("cors");
const swaggerUI = require("swagger-ui-express")
const morganBody = require("morgan-body");
const openApiConfigration = require("./docs/swagger")
const {dbConnectMySql} = require("./config/mysql")
const { verifyToken } = require("./utils/handleJwt")

const app = express();

app.use(cors());
app.use(express.json());

/**
 * 
 */
morganBody(app, {
  noColors: true,
  skip: function (req, res) {
    return res.statusCode < 400;
  },
});

const port = process.env.PORT || 3000;
/**
 * Definir ruta de documentación
 */
app.use('/documentation',
 swaggerUI.serve, 
 swaggerUI.setup(openApiConfigration))


 /*app.use((req, res, next) => {
	const token = req.headers['access-token'];
  const dataToken = await verifyToken(token);

  if (token){
    next();
  } else {
    
  }

});*/

/**
 * Aqui invocamos a las rutas! 😎
 */
app.use("/api", require("./routes"));

app.listen(port);

dbConnectMySql();

module.exports = app;
