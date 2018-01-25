// pages/ask/ask.js
var config = require('../../config')

Page({

  /**
   * 页面的初始数据
   */
  data: {
    showTopTips: false,
    errorMsg: "页面错误",
    options: [
      { id: 0, name: 'A', editable: false },
      { id: 1, name: 'B', editable: false }
    ]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    wx.request({
      url: config.service.testMockUrl,
      success (result) {
        console.log(result);
      },
      fail (error) {
        console.log(error)
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

  showTopTips: function (msg) {
    var that = this;
    this.setData({
      showTopTips: true,
      errorMsg: msg
    });
    setTimeout(function () {
      that.setData({
        showTopTips: false,
        errorMsg: "页面错误"
      });
    }, 3000);
  },

  editAnswer: function (e) {
    // console.log(e)
    var id = e.currentTarget.id

    var options = this.data.options;
    for (var i = 0, len = options.length; i < len; ++i) {
      if (options[i].id == id) {
        options[i].editable = true
      }
    }
    this.setData({
      options: options
    });
  },

  /**
   * 编辑选项 完成输入
   */
  btnEditYes: function (e) {
    console.log(e)
    // console.log(e.detail)
    // console.log(e.target.dataset)

    if (e.detail.value.length == 0) {
      console.log("输入为空")
      //TODO 输入提示
      this.showTopTips("请输入内容");
      return;
    }

    var id = e.target.dataset.optionid
    var inputText = e.detail.value

    var options = this.data.options;
    for (var i = 0, len = options.length; i < len; ++i) {
      if (options[i].id == id) {
        options[i].editable = false
        options[i].name = inputText
      }
    }
    this.setData({
      options: options
    });
  },

  /**
   * 编辑选项 取消按钮监听
   */
  btnEditCancel: function (e) {
    // console.log(e.target.dataset)

    var id = e.target.dataset.optionid

    var options = this.data.options;
    for (var i = 0, len = options.length; i < len; ++i) {
      if (options[i].id == id) {
        options[i].editable = false
      }
    }
    this.setData({
      options: options
    });
  } 
})