<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>loginCheckAlert.jsp</title>
</head>
<body>

<!-- ȭ�� ���� https://codepen.io/DovydasLiniovas/pen/ZmQBzM -->

<h3>�α��� �Ǵ� ȸ�������� �ʿ��մϴ�.</h3>
<input class="button btn largesearch-btn" value="�α���" type="button" onclick="goLoginForm()">
<input class="button btn largesearch-btn" value="ȸ������" type="button" onclick="goJoinForm()">

<div class="notify"><span id="notifyType" class=""></span></div>

<script>

// �ӽ÷� ȣ��� ���� â�� �ݰ� ���� â(�θ�â)���� ������ ��ȯ�� ��Ű�� �Լ� ����
// ����: https://lgzhyu3.tistory.com/51
	function goLoginForm(){
		opener.document.location.href = "login"; // �θ�â�� �ش� �ּҷ� �ٲ�
		window.close(); // ���� â �ݱ�
	}
	function goJoinForm(){
		opener.document.location.href = "insertUsers"; // �θ�â�� �ش� �ּҷ� �ٲ�
		window.close(); // ���� â �ݱ�
	}
</script>
</body>
</html>