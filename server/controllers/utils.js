const { mysql } = require('../qcloud')
const moment = require('moment')

async function getUserStatistics() {

  var todoDatas = {
    level: 1,
    invitationNumber: 10,
    testNumber: 20
  }

  return todoDatas
}

module.exports = {
  getUserStatistics
}