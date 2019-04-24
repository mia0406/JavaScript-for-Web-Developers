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
	
	//alert(output);
}

displayInfo({
	name: "mia",
	age: 28
});

displayInfo({
	name: "moa"
});
</script>
<script>
var values = [1,2,];
// 인터넷 익스폴로러 8 및 이전 버전 : 1, 2, undefined으로 3개 값 저장 (버그)
// 이외 다른 브라우저 : 1,2로 2개의 값만 저장
</script>
<script>
/* Array를 선언 후, stack으로도 queue로도 사용할 수 있다. */
/* Stack */
var stacks = new Array();
stacks.push("red");
stacks.push("blue");
stacks.push("white");
//alert(stacks);
//alert(stacks.pop()); // 가장 마지막에 넣은 white가 출력
//alert(stacks); // white가 빠진 후 남은 red와 blue만 문자열로 출력

/* Queue */
var queues = new Array();
queues.push("pink");
queues.push("black");
queues.push("gold");
//alert(queues.shift()); // pink
//alert(queues);

/* Queue에서 unshift() 이용 */
var queueColors = new Array();
queueColors.unshift("red", "green"); 
//alert(queueColors); // red,green

queueColors.push("black"); 
//alert(queueColors); // red,green,black

queueColors.unshift("yellow", "purple"); 
//alert(queueColors); // yellow,purple,red,green,black

//alert(queueColors.pop()); // black
</script>
<script>
/* concat() */
//var colors = ["red", "green", "yellow"];
//var colors2 = colors.concat("blue", ["black", "brown"]);
//alert(colors);
//alert(colors2);

/* splice() */
var colors = ["red", "green", "yellow", "black", "gold"];

var colors2 = colors.splice(1); 
// color2에는 red를 제외한 green,yellow, black, gold가 할당, colors에는 red 할당

var colors3 = colors.slice(1,4);
// colors3에는 colors의 인덱스 1부터 3까지가 할당되는데 현재 colors에는 red 단 한개만 존재하기 때문에 아무 값도 들어가지지 않는다.
// colors에는 red가 그대로 존재

alert(colors); // red
alert(colors2); // green,yellow,black,gold
alert(colors3); // 빈 문자열
</script>
<script>
</script>
</body>
</html>