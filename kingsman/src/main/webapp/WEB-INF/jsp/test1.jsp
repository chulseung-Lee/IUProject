<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<div id="arrStatus"></div>
<ul>
	<li> <input type="checkbox" name="chkBox" value="val1"> <a href="#this" name="chkA">�߰�</a> <label>�̸�1</label></li>
	<li> <input type="checkbox" name="chkBox" value="val2"> <a href="#this" name="chkA">�߰�</a> <label>�̸�2</label></li>
	<li> <input type="checkbox" name="chkBox" value="val3"> <a href="#this" name="chkA">�߰�</a> <label>�̸�3</label></li>
	<li> <input type="checkbox" name="chkBox" value="val4"> <a href="#this" name="chkA">�߰�</a> <label>�̸�4</label></li>
	<li> <input type="checkbox" name="chkBox" value="val5"> <a href="#this" name="chkA">�߰�</a> <label>�̸�5</label></li>
</ul>

<input type="button" id="addUser" value="�߰��ϱ�">

<form action="asd">

<div>
	���� ����Ʈ
</div>

<div id="testDiv">
	ȸ�� ����Ʈ
	<div id="userDiv">
	</div>
</div>
	
</form>

<script type="text/javascript">
	$(document).ready(function(){
		$('#addUser').on('click', function(e) {
			e.preventDefault();
			fn_addUser();
		});
	});
	
	var arrUser = new Array();
	var selectIds = null;
	
	function fn_addUser() {
		$('input:checkbox[name="chkBox"]').each(function() {
			/* this.checked = true; */ //checked ó��
			if(this.checked){	//checked ó���� �׸��� ��
				var str = '<p><input type="hidden" name="ids" value="'+this.value+'">'+this.value+'</p>';
				 // �迭�� ũ�Ⱑ 1�̻��̸�
				var chkBool = false;
				for(var i = 0 ; i < arrUser.length ; i ++){
					if(this.value == arrUser[i]){ // �� üũ�ڽ��� ���� i�� ������ chkbool�� ��
						chkBool = true;
					}
				}
				if(chkBool != true){ // chkbool�� �����̸� 
					//$('#userDiv').append(str);
					selectIds += str;	
				
					var arrUserBool = false;
					for(var i = 0 ; i < arrUser.length ; i ++){
						if(this.value == arrUser[i])
							arrUserBool = true;
					}
					if(arrUserBool != true)
						arrUser.push(this.value);
					$('#arrStatus').html(arrUser);
				}else{
					alert(this.value + ' �� �ߺ��Դϴ�.')
				}
			}
		});
	}

</script>
</body>
</html>