<%@ page  language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<!doctype html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=Edge"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0"/>
    <title>IM-DEMO</title>

    <!-- HTML5 element  -->
    <script src="./demo/javascript/dist/browser-polyfill.min.js"></script>
</head>
<body>
<section id='main' class='w100'>
    <article id='demo'></article>
    <article id='components'></article>
</section>
<!--config-->
<script src="./demo/javascript/dist/webim.config.js"></script>
<script>
        <!--A JavaScript library for XMPP over Websocket-->
        document.write("<script src='./sdk/dist/strophe-1.2.8.min.js'><\/script>");
</script>
<!--sdk-->
<script src='./sdk/dist/websdk-1.4.12.js'></script>
<!--webrtc-->
<script>
    if (WebIM.config.isWebRTC) {
        document.write("<script src='./webrtc/dist/adapter.js'><\/script>");
        document.write("<script src='./webrtc/dist/webrtc-1.4.12.js'><\/script>");
    }
</script>
<!--[if lte IE 9]>
<script src="./demo/javascript/dist/swfupload/swfupload.min.js"></script>
<![endif]-->
<!--demo javascript-->
<script src="./demo/javascript/dist/demo-1.4.12.js"></script>
</body>
</html>
