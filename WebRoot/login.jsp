<%@ page  contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
     <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=Edge"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0"/>
</head>
<body id="jz-login">
<!--header-->
<!--header end-->

<!--登陆表单-->
<div class="container">
    <div class="jz-login">
        <form class="form-signin" id="jz-form-signin" name="jz-form-signin" method="post" action="${ctx}/dologin">
            <input name="myusername" id="myusername" value="" type="text" class="form-control" placeholder="账户：" required>
            <span class="jz-name-error"></span>
            <input name="mypassword" id="mypassword" value="" type="password" class="form-control" placeholder="密码：" required>
            <div class="jz-passward">
                <div class="row">
                    <div class="col-xs-4">
                    </div>
                    <div class="col-xs-4"><a class="jz-register-btn pull-right" href="${ctx}/gotoRegister">注册</a></div>
                </div>
            </div>
            <button id="submit" class="btn btn-lg btn-primary btn-block" type="submit">登陆</button>
        </form>
    </div>
</div>
<!--登陆表单 end-->
<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content jz-tip-form">

        </div>
    </div>
</div>


<script type="text/javascript">
</script>
</body>
</html>