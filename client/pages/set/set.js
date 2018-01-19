Page({
  data: {
    text: "1. 你最喜欢的食物是什么？",
    items: [
      { value: 'USA', name: '美国' },
      { value: 'CHN', name: '中国', checked: 'true' },
      { value: 'BRA', name: '巴西' },
      { value: 'JPN', name: '日本' },
    ],
    radioItems: [
      { name: 'A', value: '0', editable: false },
      { name: 'B', value: '1', editable: false, checked: true }
    ],
    test: {
      text: '香蕉',
      editable: false
    }
  },
  onLoad: function (options) {
    // Do some initialize when page load.
  },
  onReady: function () {
    // Do something when page ready.
  },
  onShow: function () {
    // Do something when page show.
  },
  onHide: function () {
    // Do something when page hide.
  },
  onUnload: function () {
    // Do something when page close.
  },
  onPullDownRefresh: function () {
    // Do something when pull down.
  },
  onReachBottom: function () {
    // Do something when page reach bottom.
  },
  onShareAppMessage: function () {
    // return custom share data when user share.
  },
  onPageScroll: function () {
    // Do something when page scroll
  },
  radioChange: function (e) {
    console.log('radio发生change事件，携带value值为：', e.detail.value)

    var items = this.data.items;
    for (var i = 0, len = items.length; i < len; ++i) {
      items[i].checked = items[i].value == e.detail.value
    }

    this.setData({
      items: items
    });
  },
  radioChange2: function (e) {
    console.log('radio发生change事件，携带value值为：', e.detail.value);

    var radioItems = this.data.radioItems;
    for (var i = 0, len = radioItems.length; i < len; ++i) {
      radioItems[i].checked = radioItems[i].value == e.detail.value;
    }

    this.setData({
      radioItems: radioItems
    });
  },
  editAnswer: function (e) {
    console.log(e)
    var name = e.currentTarget.id
    //var currentValue = e.currentTarget.dataset.value

    var radioItems = this.data.radioItems;
    for (var i = 0, len = radioItems.length; i < len; ++i) {
      if (radioItems[i].name == name) {
        radioItems[i].editable = true
      }
    }
    this.setData({
      radioItems: radioItems
    });


  },
  btnEdit : function (e) {
    this.setData({
      test: {
        text: "香蕉",
        editable: !this.data.test.editable
      }
    })
  },
  editDone: function (e) {
    this.setData({
      test: {
        text: "来解决了解了",
        editable: false
      }
    })
  }
})