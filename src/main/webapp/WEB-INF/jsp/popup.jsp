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
  <p>EasyUI弹窗</p>
  <div><button id="dialogRequestBtn">请求</button></div>
  <select id="numberSelect">
    <option value="1">选项1</option>
    <option value="2">选项2</option>
    <option value="3">选项3</option>
  </select>

  <!-- 创建弹窗的按钮 -->
  <div id="dlg-buttons">
    <a href="#" class="easyui-linkbutton" onclick="closeDialog()">关闭</a>
  </div>
</div>
<script>
  /**
   * @监听请求按钮的点击事件
   */
  $('#dialogRequestBtn').click(function () {
    // 发起 Ajax 请求
    $.ajax({
      url: 'http://localhost:8080/web-jsp-demo/json/list.json', // 替换为实际的 Ajax 请求 URL
      method: 'GET', // 或 'POST'，根据你的需求
      data: {},
      success: function (response) {
        // 请求成功时的回调函数
        console.log(response); // 在控制台打印返回的数据

        if (!response?.success) return;

        // 清空原有选项
        $('#numberSelect').empty();

        // 动态添加选项
        for (let item of response.data) {
          $('#numberSelect').append(new Option(item.label, item.value));
        }

        // 处理返回的数据，更新弹窗内容或其他操作
        // ...
      },
      error: function (xhr, status, error) {
        // 请求失败时的回调函数
        console.log(error); // 在控制台打印错误信息
      },
    });
  });

  /**
   * @关闭弹窗
   */
  function closeDialog() {
    var selectValue = $('#numberSelect').find('option:selected').text();

    $('#userName').textbox('setValue', selectValue);

    console.log('销声匿迹');

    $('#dlg').dialog('close');
  }
</script>
