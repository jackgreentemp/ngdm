/**
 * 小程序配置文件
 */

//是否开发模式，上线前要修改为false
var dev = true;

// 此处主机域名修改成腾讯云解决方案分配的域名
var host = 'https://7in6rjqa.qcloud.la';

//开发模式使用easy mock来获取数据
var mockHost = 'https://www.easy-mock.com/mock/5a66cbdd70d6010b4326d567/weapp'

var config = {

    // 下面的地址配合云端 Demo 工作
    service: {
        host,

        // 登录地址，用于建立会话
        loginUrl: `${host}/weapp/login`,

        // 测试的请求地址，用于测试会话
        requestUrl: `${host}/weapp/user`,

        // 测试的信道服务地址
        tunnelUrl: `${host}/weapp/tunnel`,

        // 上传图片接口
        uploadUrl: `${host}/weapp/upload`,

        // 测试数据库接口
        dbUrl : `${host}/weapp/db`,

        testMockUrl: dev ? `${host}/weapp/test` : `${mockHost}/test`,

        ormUrl: `${host}/weapp/orm`
    }
};

module.exports = config;
