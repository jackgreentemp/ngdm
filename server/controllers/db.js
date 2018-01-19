const { mysql } = require('../qcloud')

module.exports = async (ctx, next) => {
  console.log(ctx)
  // 通过 Koa 中间件进行登录态校验之后
  // 登录信息会被存储到 ctx.state.$wxInfo
  // 具体查看：
  if (ctx.state.$wxInfo.loginState === 1) {
    // loginState 为 1，登录态校验成功
    console.log(await mysql('cAppinfo').where({ appid: 'wx18d48ecadd856a44'}).first())
    console.log(await mysql('cAppinfo').select('*'))
    ctx.state.data = await mysql('cAppinfo').where({ appid: 'wx18d48ecadd856a44' }).first()
  } else {
    ctx.state.code = -1
  }
}