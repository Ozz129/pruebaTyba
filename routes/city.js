const express = require("express");
const router = express.Router();
const authMiddleware = require("../middleware/session");

const { getData } = require("../controllers/city");

/**
 * Get cities list
 * @openapi
 * city/:all/:cityId:
 *    get:
 *      tags:
 *        - city
 *      summary: "List of all the cities"
 *      description: Obtiene información con respecto a las ciudadades, para obtener listado de ciudaddes all debe ser igual a 1
 *                    para obtener informacion de una ciudad en específico enviar wikiDataId en el valor de cityId
 *      security:
 *        - bearerAuth: []
 *      responses:
 *        '200':
 *          description: Retorna la listas de las canciones.
 *          content:
 *           application/json:
 *             schema:
 *               type: array
 *               items: [ ]
 *        '422':
 *          description: Error de validacion.
 */
router.get("/:all/:cityId", authMiddleware, getData);


module.exports = router;
