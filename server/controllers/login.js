const { mysql } = require('../qcloud')
const moment = require('moment')
const { getUserStatistics } = require('./utils')

// 登录授权接口
module.exports = async (ctx, next) => {
    // 通过 Koa 中间件进行登录之后
    // 登录信息会被存储到 ctx.state.$wxInfo
    // 具体查看：
    // ctx.state.$wxInfo格式: {loginState: 1, userinfo: {skey: "bdb6053d9dd02219ffbeaa833c52e84a925f0c72", userinfo: {avatarUrl: "", ...}}}

    if (ctx.state.$wxInfo.loginState) {

      // var openId = ctx.state.$wxInfo.userinfo.userinfo.openId
      // var userInfo = await mysql('userInfo').where({ open_id: openId }).first()

      // if (userInfo == undefined) {
      //   var res = await mysql('userInfo').insert({
      //     open_id: openId,
      //     user_info: JSON.stringify(ctx.state.$wxInfo.userinfo.userinfo)
      //   })
      //   ctx.state.$wxInfo.userinfo.userinfo.userId = res[0]
      // } else {
      //   var userId = await mysql("userInfo").select("id").where({open_id: openId}).first()
      //   await mysql("userInfo").update({ update_time: moment(new Date()).format('YYYY-MM-DD HH:mm:ss') }).where({ open_id: openId })
      //   ctx.state.$wxInfo.userinfo.userinfo.userId = userId.id
      // }
      // //TODO Level，邀请人数，答卷分数
      
      // ctx.state.$wxInfo.userinfo.userinfo.StatisticsDatas = await getUserStatistics()
      ctx.state.data = ctx.state.$wxInfo.userinfo
      ctx.state.data['time'] = Math.floor(Date.now() / 1000)
    }
}
