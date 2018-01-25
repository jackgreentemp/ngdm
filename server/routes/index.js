/**
 * ajax 服务路由集合
 */
const router = require('koa-router')({
  prefix: '/weapp'
})
const controllers = require('../controllers')

// 从 sdk 中取出中间件
// 这里展示如何使用 Koa 中间件完成登录态的颁发与验证
const { auth: { authorizationMiddleware, validationMiddleware } } = require('../qcloud')

// --- 登录与授权 Demo --- //
// 登录接口
router.get('/login', authorizationMiddleware, controllers.login)

// 用户信息接口（可以用来验证登录态）
router.get('/user', validationMiddleware, controllers.user)

router.get('/db', validationMiddleware, controllers.db)

//测试orm
router.get('/orm', validationMiddleware, controllers.orm)

// --- 图片上传 Demo --- //
// 图片上传接口，小程序端可以直接将 url 填入 wx.uploadFile 中
router.post('/upload', controllers.upload)

// --- 信道服务接口 Demo --- //
// GET  用来响应请求信道地址的
router.get('/tunnel', controllers.tunnel.get)
// POST 用来处理信道传递过来的消息
router.post('/tunnel', controllers.tunnel.post)

// --- 客服消息接口 Demo --- //
// GET  用来响应小程序后台配置时发送的验证请求
router.get('/message', controllers.message.get)
// POST 用来处理微信转发过来的客服消息
router.post('/message', controllers.message.post)

/*

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
const Sequelize = require('sequelize');
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

//async/await
(async () => {
  let users = await userModel.findAll();
  for (let user of users) {
    console.log(JSON.stringify(user))
  }
})();

//promise
userModel.findAll().then(
  users => {
    for (let user of users) {
      console.log(user);
    }
  }
);
*/

module.exports = router
