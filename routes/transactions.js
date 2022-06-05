const express = require("express");
const router = express.Router();
const authMiddleware = require("../middleware/session");
const {
  getItems
} = require("../controllers/transactions");

/**
 * Get all transactions
 * @openapi
 * /transactions:
 *    get:
 *      tags:
 *        - transactions
 *      summary: "List transactions"
 *      description: Obtiene la lista de todas las transacciones
 *      security:
 *        - bearerAuth: []
 *      responses:
 *        '200':
 *          description: Retorna la listas de las canciones.
 *          content:
 *           application/json:
 *            items: []
 *        '422':
 *          description: Error de validacion.
 */
router.get("/", authMiddleware, getItems);

module.exports = router;
