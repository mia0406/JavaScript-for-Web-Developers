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
/* 01.동적으로 프로퍼티 추가  */
var person=new Object(); // 객체(참조값) 생성
person.name="mia"; // name이라는 프로퍼티 생성
alert(person.name);

var name="moa"; // 참조값 아닌 원시값 생성
name.age=27; // age라는 프로퍼티 생성
alert(name.age); // name 변수는 참조값이 아니기 때문에 프로퍼티를 만들 수 X 
</script>
<script>
/* 02. 자바스크립트 변수 복사 */
var num1=5;
var num2=num1;
num1=10;
alert(num1); // 10 출력
alert(num2); // 5 출력

var obj1=new Object();
var obj2=obj1;
obj1.name="mia";
alert(obj2.name); // "mia 출력"
</script>
<script>
/* 03.변수 선언
 * 변수를 추가하지 않았을 때는 자동으로 전역 컨텍스트에 추가 
 * 이런 식으로 코딩되어있을 때 전역 컨텍스트의 변수를 사용하고 싶다면 "window.프로퍼티"로 명시
 */
function add(){
	
	function addtwo(){
		sum =10;
		return sum;
	}
	
	addtwo();
}

add();
alert(sum); // 이렇게 함수 안에 함수로 존재해있어도 sum을 선언하지 않았기 때문에 자동으로 전역 컨텍스트에 추가 
</script>
<script>
/* 04.식별자 검색 */
var color = "blue";

function getColor(){
	
	var color = "red";
	return color;
}

alert(getColor()); // "red" 출력(지연변수 사용)
alert(window.color); // "blue" 출력(전역변수 사용)
</script>
</body>
</html>