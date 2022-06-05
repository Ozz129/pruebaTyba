const { sequelize } = require("../config/mysql")
const { DataTypes } = require("sequelize");

const Transaction = sequelize.define(
  "transactions",
  {
    endpoint: {
      type: DataTypes.STRING
    },
    method: {
      type: DataTypes.STRING,
    }
  },
  {
    timestamps: true,
  }
);

Transaction.find = Transaction.findAll;
Transaction.findById = Transaction.findByPk;

module.exports = Transaction;
 