const Sequelize = require('sequelize');
const config = require('../config');

var sequelize = new Sequelize(config.mysql.db, config.mysql.user, config.mysql.pass, {
  host: config.mysql.host,
  dialect: 'mysql',
  pool: {
    max: 5,
    min: 0,
    acquire: 30000,
    idle: 10000
  }
});

module.exports = sequelize;