// pages/create/create.js

var qcloud = require('../../vendor/wafer2-client-sdk/index')
var config = require('../../config')
var util = require('../../utils/util.js')
var app = getApp()

var touchDot = 0  //触摸时的原点   
var isSwiped = false
var questions = []
var usedQuestionIDs = []

Page({

  /**
   * 页面的初始数据
   */
  
  data: {
    choosedQuestions:[],
    answerIndex:[],
    questionIndex:0,
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {

    var that = this

    qcloud.request({
      url: config.service.questionUrl,
      method: 'GET',
      login: !config.dev,
      success(result) {
        console.log(result)


        for (var i = 0; i < result.data.data.questions.length; i++) {
          usedQuestionIDs.push(result.data.data.questions[i].id)
        }

        questions = result.data.data.questions,
        
        that.setData({
          choosedQuestions: result.data.data.questions,
        })

      },

      fail(error) {
        util.showModel('请求失败', error)
        console.log('request fail', error)
      }
    })

  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
  
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
  
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
  
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
  
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
  
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
  
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
  
  },

  // 触摸开始事件
  touchStart: function (e) {
    touchDot = e.touches[0].pageX; // 获取触摸时的原点
  },
  // 触摸移动事件
  touchMove: function (e) {

    var text = ""

    var touchMove = e.touches[0].pageX;
    console.log("touchMove:" + touchMove + " touchDot:" + touchDot + " diff:" + (touchMove - touchDot));
    // 向左滑动  
    if (touchMove - touchDot < -40) {
      isSwiped = true
    }
    // 向右滑动
    if (touchMove - touchDot > 40) {
      isSwiped = true
    }

    this.setData({
      text: text,
    });
  },
  // 触摸结束事件
  touchEnd: function (e) {
    
    if (isSwiped){
      this.getNewQuestions()
    }

    isSwiped = false;
  },

  getNewQuestions: function (e) {
    
    if(questions.length <= 0) {
      this.requestNewQuestions(this.getRandom)
    }else{
      this.getRandom()
    }
  },

  // 从questions仓库里pop出一道题
  getRandom:function(e) {
    var that = this
    
    var nextQuestion = questions.pop()
    var _choosedQuestions = this.data.choosedQuestions
    _choosedQuestions[this.data.questionIndex] = nextQuestion
    
    console.log(nextQuestion)
    
    that.setData({
      choosedQuestions: _choosedQuestions,
    })
  },

  // 从网上获取新的5道题目
  requestNewQuestions: function (successBlock) {
    
    wx.showLoading({
      title: '请稍等',
    })

    qcloud.request({
      url: config.service.questionUrl,
      data: { questionIds: usedQuestionIDs},
      method: 'GET',
      login: !config.dev,
      success(result) {
        console.log(result)

        for (var i = 0; i < result.data.data.questions.length; i++) {
          usedQuestionIDs.push(result.data.data.questions[i].id)
        }

        console.log(usedQuestionIDs)

        questions = result.data.data.questions
        
        wx.hideLoading()

        successBlock()
      },

      fail(error) {
        util.showModel('请求失败', error)
        console.log('request fail', error)
      }
    })
  },

  previousAction:function(e) {
    var questionIndex = this.data.questionIndex

    if (questionIndex > 0){
      this.setData({
        questionIndex: questionIndex - 1,
      })
    }
  },
  nextAction: function (e) {
    var questionIndex = this.data.questionIndex

    if (questionIndex < this.data.choosedQuestions.length-1) {
      this.setData({
        questionIndex: questionIndex + 1,
      })
    }
  },
  completeAction:function(e) {
    //TODO：上传创建的题目
    console.log("点击完成按钮")
  }

})