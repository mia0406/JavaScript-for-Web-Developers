<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Chapter 04</title>
</head>
<body>
<script>
/* 01.�������� ������Ƽ �߰�  */
var person=new Object(); // ��ü(������) ����
person.name="mia"; // name�̶�� ������Ƽ ����
alert(person.name);

var name="moa"; // ������ �ƴ� ���ð� ����
name.age=27; // age��� ������Ƽ ����
alert(name.age); // name ������ �������� �ƴϱ� ������ ������Ƽ�� ���� �� X 
</script>
<script>
/* 02. �ڹٽ�ũ��Ʈ ���� ���� */
var num1=5;
var num2=num1;
num1=10;
alert(num1); // 10 ���
alert(num2); // 5 ���

var obj1=new Object();
var obj2=obj1;
obj1.name="mia";
alert(obj2.name); // "mia ���"
</script>
<script>
/* 03.���� ����
 * ������ �߰����� �ʾ��� ���� �ڵ����� ���� ���ؽ�Ʈ�� �߰� 
 * �̷� ������ �ڵ��Ǿ����� �� ���� ���ؽ�Ʈ�� ������ ����ϰ� �ʹٸ� "window.������Ƽ"�� ���
 */
function add(){
	
	function addtwo(){
		sum =10;
		return sum;
	}
	
	addtwo();
}

add();
alert(sum); // �̷��� �Լ� �ȿ� �Լ��� �������־ sum�� �������� �ʾұ� ������ �ڵ����� ���� ���ؽ�Ʈ�� �߰� 
</script>
<script>
/* 04.�ĺ��� �˻� */
var color = "blue";

function getColor(){
	
	var color = "red";
	return color;
}

alert(getColor()); // "red" ���(�������� ���)
alert(window.color); // "blue" ���(�������� ���)
</script>
</body>
</html>