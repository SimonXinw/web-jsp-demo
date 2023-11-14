function onUserNameBtnClick() {
  console.log('nbbbbb xw!!!!');
  $('#dlg').dialog('open');
}

function closeDialog() {
  $('#userName').textbox('setValue', '水到渠成');

  console.log('销声匿迹');

  $('#dlg').dialog('close');
}
