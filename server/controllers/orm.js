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
  
  if (ctx.state.$wxInfo.loginState === 1) {
    // loginState 为 1，登录态校验成功
    //示例数据 {id: 6, open_id: "otIzq0G-eTI85gk8LCEjkUryU-C0", user_info: "{"openId":"otIzq0G-eTI85gk8LCEjkUryU-C0","nickName…estamp":1516588807,"appid":"wx18d48ecadd856a44"}}", create_time: "2018-01-21T18:40:09.000Z", update_time: "2018-01-25T04:15:05.000Z"}

    //创建 持久化示例
    // ctx.state.data = await userModel.create({
    //   open_id: "test",
    //   user_info: "test"
    // })

    //删除
    // ctx.state.data = await userModel.destroy({
    //   where: { id: 9 }
    // })

    //修改
    //let user = await userModel.findById(10);
    // ctx.state.data = await user.update({
    //   user_info: "123"
    // })

    //修改
    // let user = await userModel.findById(10);
    // user.user_info = "456";
    // ctx.state.data = await user.save();

    //查询所有
    // let users = await userModel.findAll();

    // for (let user of users) {
    //   console.log(JSON.stringify(user))
    // }

    // ctx.state.data = users;

    //查询一个
    ctx.state.data = await userModel.findOne();

    //条件查询
    // ctx.state.data = await userModel.findOne({
    //   where: {
    //     open_id: "otIzq0G-eTI85gk8LCEjkUryU-C0"
    //   },
    //   attributes: ['id', 'user_info']
    // })

  } else {
    ctx.state.code = -1
  }



}