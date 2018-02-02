<%@ page  language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--"WebRoot/sdk/dist/strophe-1.2.8.min.js"
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type='text/javascript' src='sdk/dist/webrtc-1.0.0.js'></script>
	<script type='text/javascript' src='sdk/dist/strophe-1.2.8.min.js'></script>
	<script type='text/javascript' src='sdk/dist/websdk-1.1.2.js'></script>
	<script type='text/javascript' src='sdk/dist/websdk.shim.js'></script>
	
	<script type='text/javascript' src='sdk/dist/demo.js'></script>
	<script type='text/javascript' src='sdk/dist/webim.config.js'></script>
	<script type='text/javascript' src='sdk/dist/swfupload/swfupload.min.js'></script>
	<script src='http://downloads.easemob.com/downloads/cdn/websdk-1.4.11.js'></script>
  </head>
  
  <body>
    This is my JSP page. <br>
    <input type="text"/><input type="button" onclick="sendPrivateText();" value="发送"/>
    <script type="text/javascript">
    var conn = new WebIM.connection({
        https: WebIM.config.https,
        url: WebIM.config.xmppURL,
        isAutoLogin: WebIM.config.isAutoLogin,
        isMultiLoginSessions: WebIM.config.isMultiLoginSessions
    });
    function sendPrivateText() {
    	alert(2222);
        var id = conn.getUniqueId();                 // 生成本地消息id
        var msg = new WebIM.message('txt', id);      // 创建文本消息
        msg.set({
            msg: 'message content',                  // 消息内容
            to: 'username',                          // 接收消息对象（用户id）
            roomType: false,
            success: function (id, serverMsgId) {
                console.log('send private text Success');
            }
        });
        msg.body.chatType = 'singleChat';
        conn.send(msg.body);
    };
    </script>
  </body>
</html>
