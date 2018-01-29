const Sequelize = require('sequelize');
const sequelize = require('../tools/orm');

var userModel = sequelize.define('userInfo', {
  id: { type: Sequelize.INTEGER.UNSIGNED, autoIncrement: true, primaryKey: true },
  open_id: Sequelize.STRING(100),
  user_info: Sequelize.STRING(2018),
  create_time: { type: Sequelize.DATE, defaultValue: Sequelize.NOW },
  update_time: { type: Sequelize.DATE, defaultValue: Sequelize.NOW },
}, {
    // 不添加时间戳属性 (updatedAt, createdAt)
    timestamps: false,
    // 禁用修改表名; 默认情况下，sequelize将自动将所有传递的模型名称（define的第一个参数）转换为复数。 如果你不想这样，请设置以下内容
    freezeTableName: true,
  });

module.exports = userModel