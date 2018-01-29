const Sequelize = require('sequelize');
const sequelize = require('../tools/orm');

var questionOptionModel = sequelize.define('questionOption', {
  id: { type: Sequelize.INTEGER.UNSIGNED, autoIncrement: true, primaryKey: true },
  content: Sequelize.STRING(255),
  question_id: Sequelize.INTEGER,
  is_answer: Sequelize.BOOLEAN,
  uid: Sequelize.INTEGER.UNSIGNED,
  create_time: { type: Sequelize.DATE, defaultValue: Sequelize.NOW },
  update_time: { type: Sequelize.DATE, defaultValue: Sequelize.NOW },
}, {
    // 不添加时间戳属性 (updatedAt, createdAt)
    timestamps: false,
    // 禁用修改表名; 默认情况下，sequelize将自动将所有传递的模型名称（define的第一个参数）转换为复数。 如果你不想这样，请设置以下内容
    freezeTableName: true,

    underscored: true,
  });

module.exports = questionOptionModel