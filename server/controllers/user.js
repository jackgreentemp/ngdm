const { mysql } = require('../qcloud')
const moment = require('moment')
const { getUserStatistics } = require('./utils')

module.exports = async (ctx, next) => {
    // 通过 Koa 中间件进行登录态校验之后
    // 登录信息会被存储到 ctx.state.$wxInfo
    // 具体查看：
    // ctx.state.$wxInfo格式: {loginState: 1, userinfo: {avatarUrl: "", ...}}
    if (ctx.state.$wxInfo.loginState === 1) {
        // loginState 为 1，登录态校验成功
      // var openId = ctx.state.$wxInfo.userinfo.openId
      // var userId = await mysql("userInfo").select("id").where({ open_id: openId }).first()
      // await mysql("userInfo").update({ update_time: moment(new Date()).format('YYYY-MM-DD HH:mm:ss') }).where({ open_id: openId })

      // ctx.state.$wxInfo.userinfo.StatisticsDatas = await getUserStatistics()
      // ctx.state.$wxInfo.userinfo.userId = userId.id
      ctx.state.data = ctx.state.$wxInfo.userinfo
    } else {
      ctx.state.code = -1
    }
}
