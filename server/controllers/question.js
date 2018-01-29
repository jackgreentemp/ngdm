const Sequelize = require('sequelize');
const Op = Sequelize.Op;
const questionModel = require('../models/question');
const optionModel = require('../models/questionOption');

questionModel.hasMany(optionModel)
questionModel.hasMany(optionModel, { foreignKey: 'question_id', sourceKey: 'id' });
// optionModel.belongsTo(questionModel, { foreignKey: 'question_id', targetKey: 'id' });

/**
 * 响应 GET 请求（响应微信配置时的签名检查请求）
 */
async function get(ctx, next) {
  const { ids } = ctx.query
  const idArray = ids ? ids.split(",") : []

  let questionExample = await questionModel.findOne();
  let res = await questionExample.getQuestionOptions();
  // let optionExample = await optionModel.findOne();
  // let res = await optionExample.getQuestion();

  // let questionArray = await questionModel.findAll({
  //   include: [optionModel],
  //   where: {
  //     id: {
  //       [Op.notIn]: [...idArray]
  //     }
  //   },
  //   attributes: ["id", "question"]
  // });

  // let options = questionArray[0].getOptionModels()

  // const index = Math.floor(Math.random() * questionArray.length)
  
  // ctx.state.data = questionArray[index]

  ctx.state.data = res
  
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