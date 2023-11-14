<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- 创建一个隐藏的弹窗，用于后续显示 -->
<div
  id="dlg"
  class="easyui-dialog"
  style="width: 400px; height: 200px; padding: 10px"
  closed="true"
  buttons="#dlg-buttons"
>
  <p>这是一个EasyUI弹窗示例。</p>

  <!-- 创建弹窗的按钮 -->
  <div id="dlg-buttons">
    <a href="#" class="easyui-linkbutton" onclick="closeDialog()">关闭</a>
  </div>
</div>
