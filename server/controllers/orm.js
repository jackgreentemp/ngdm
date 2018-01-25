const Sequelize = require('sequelize');

//orm 测试
const sequelize = require('../tools/orm');

//测试连接
sequelize
  .authenticate()
  .then(() => {
    console.log('Connection has been established successfully.');
  })
  .catch(err => {
    console.error('Unable to connect to the database:', err);
});

//测试查找
var userModel = sequelize.define('userInfo', {
  id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
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

module.exports = async (ctx, next) => {
  let users = await userModel.findAll();
  
  for (let user of users) {
    console.log(JSON.stringify(user))
  }

  if (ctx.state.$wxInfo.loginState === 1) {
    // loginState 为 1，登录态校验成功
    ctx.state.data = users;
  } else {
    ctx.state.code = -1
  }

}