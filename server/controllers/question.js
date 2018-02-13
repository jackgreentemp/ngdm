const Sequelize = require('sequelize');
const Op = Sequelize.Op;
const questionModel = require('../models/question');
const optionModel = require('../models/questionOption');

questionModel.hasMany(optionModel, {as: 'options', foreignKey: 'question_id'})

/**
 * 响应 GET 请求（响应微信配置时的签名检查请求）
 */
async function get(ctx, next) {
  const { ids } = ctx.query
  const idArray = ids ? ids.split(",") : []

  let questionExample

  try {

    questionExample = await questionModel.findOne({
      where: {id: 1},
      include: [{model: optionModel, as: 'options'}]
    });

  } catch(e) {
    console.log(e)
  }
  
  ctx.state.data = questionExample
  
}

async function post(ctx, next) {
  // 检查签名，确认是微信发出的请求
  const { signature, timestamp, nonce } = ctx.query
  if (!checkSignature(signature, timestamp, nonce)) ctx.body = 'ERR_WHEN_CHECK_SIGNATURE'

  /**
   * 解析微信发送过来的请求体
   * 可查看微信文档：https://mp.weixin.qq.com/debug/wxadoc/dev/api/custommsg/receive.html#接收消息和事件
   */
  const body = ctx.request.body

  ctx.body = 'success'
}

module.exports = {
  post,
  get
}