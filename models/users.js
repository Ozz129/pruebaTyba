const { sequelize } = require("../config/mysql")
const { DataTypes } = require("sequelize");

const User = sequelize.define(
  "users",
  {
    name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    user: {
      type: DataTypes.STRING,
    },
    password: {
      type: DataTypes.STRING,
    }
  },
  {
    timestamps: true,
  }
);
User.find = User.findAll;
User.findById = User.findByPk;
module.exports = User;
