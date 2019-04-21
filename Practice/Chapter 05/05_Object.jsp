<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chapter 5 - Object</title>
</head>
<body>
<script>
function displayInfo(args){
	var output = "";

	if(typeof args.name == "string"){ 
		// typeof에서 String이 아니라 string으로 써야만 오류 없이 실행 가능
		output += "Name: " + args.name + "\n"; 
	}
	
	if(typeof args.name == "number"){		
		output += "Age: " + args.age + "\n";
	}
	
	alert(output);
}

displayInfo({
	name: "mia",
	age: 28
});

displayInfo({
	name: "moa"
});
</script>
</body>
</html>