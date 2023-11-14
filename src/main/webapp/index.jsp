<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<html>
  <head>
    <title>JSP Demo</title>
    <link
      rel="stylesheet"
      href="js/jquery-easyui-1.8.6/themes/default/easyui.css"
    />
    <link rel="stylesheet" href="js/jquery-easyui-1.8.6/themes/icon.css" />
    <link rel="stylesheet" href="css/index.css" />
  </head>
  <body>
    <div class="page">
      <form action="https://baidu.com" method="post">
        <div>
          <h1>用户登录</h1>
        </div>
        <div>
          <input
            class="easyui-textbox"
            data-options="iconCls:'icon-man',iconWidth:30,iconAlign:'left',prompt:'用户名'"
            name="userName"
            style="width: 100%; height: 35px"
          />
          <a
            id="userNameBtn"
            href="#"
            class="easyui-linkbutton"
            data-options="iconCls:'icon-search'"
            onclick="onUserNameBtnClick()"
          ></a>
        </div>
        <div>
          <input
            class="easyui-passwordbox"
            name="password"
            data-options="iconWidth:30,iconAlign:'left',prompt:'密码'"
            style="width: 100%; height: 35px"
          />
        </div>
        <div>
          <input
            class="easyui-checkbox"
            label="记住密码"
            labelPosition="after"
            labelWidth="70"
          />
        </div>
        <div>
          <input
            class="easyui-linkbutton"
            type="submit"
            value="登陆"
            style="width: 100%; height: 35px"
          />
        </div>
        <div>
          <div style="display: inline">
            <a href="javascript:void(0)">还未注册？</a>
          </div>
          <div style="display: inline; margin-left: 170px">
            <a href="javascript:void(0)">忘记密码？</a>
          </div>
        </div>
      </form>
    </div>
    <!-- script -->

    <script
      src="https://lf26-cdn-tos.bytecdntp.com/cdn/expire-1-M/jquery/3.6.0/jquery.min.js"
      type="application/javascript"
    ></script>
    <script src="js/jquery-easyui-1.8.6/jquery.easyui.min.js"></script>
    <script src="js/index.js"></script>
  </body>
</html>
