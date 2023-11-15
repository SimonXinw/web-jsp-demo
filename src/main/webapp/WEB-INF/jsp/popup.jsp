<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- 创建一个隐藏的弹窗，用于后续显示 -->
<div
  id="dlg"
  class="easyui-dialog"
  style="width: 400px; min-height: 200x; padding: 10px"
  closed="true"
  buttons="#dlg-buttons"
>
  <p>EasyUI弹窗</p>
  <div><button id="dialogRequestBtn">请求</button></div>
  <!-- <select id="idiomSelect">
    <option value="1">选项1</option>    <option vlue="2">选项2</option>
    <option value="3">选项3</option>
  </select> -->
  <div class="list-wrap" onclick="console.log('父元素 div点击事件触发')">
    <ul id="idiomSelect" onclick="console.log('父元素 ul 点击事件触发')">
      <li><a href="#" onclick="onSelect()">demo</a></li>
    </ul>
  </div>

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
        if (!response?.success) return;

        // 清空原有选项
        $('#idiomSelect').empty();

        // for (let item of response.data) {
        //   $('#idiomSelect').append(new Option(item.label, item.value));
        // }

        for (let item of response.data) {
          var liTemplate =
            '<li><a class="idiom-item" href="#" data-value="' +
            item.value +
            '"  >' +
            item.label +
            '</a></li>';

          $('#idiomSelect').append(liTemplate);
        }

        /**
         * @选中选项
         */ $('.idiom-item').on('click', function (e) {
          e.stopPropagation();

          console.log('a 标签点击事件');
        });

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
    var selectValue = $('#idiomSelect').find('option:selected').text();

    $('#userName').textbox('setValue', selectValue);

    console.log('销声匿迹');

    $('#dlg').dialog('close');
  }
</script>
