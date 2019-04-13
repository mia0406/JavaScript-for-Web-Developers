
* 동적으로 프로퍼티를 추가할 수 있는 값은 참조값(객체)만 가능하다.

* 힙 메모리는 "브라우저가 쓰는 메모리"라고 생각해라.

* 변수는 값으로도, 참조로도 접근할 수 있지만 매개변수는 오직 값으로만 전달된다.
* 참조값을 함수에 매개변수로 전달할 때, 함수에 값 형태로 전달되지만 참조를 통해 객체에 접근한다.
```javascript
function setName(obj){
  obj.name="mia";
  obj=new Object();
  obj.name="Greg";
}

var person=new Object();
setName(person);
alert(person.name); // "mia"가 출력
```
* 함수에 참조가 아닌 **값** 을 전달했기 때문에 함수 내부에서 매개변수의 값이 바뀌었어도 원래 객체에 대한 참조를 그대로 유지한다.

* typeof 연산자
* 변수가 원시 타입이라면 파악하기에 좋다.
* 하지만, 값이 객체이거나 null이라면 두 종류 모두 "object"를 반환

* instanceof 연산자
* 주어진 참조 타입의 인스턴스일 때는 true, 아닐 때는 false 반환
```javascript
color instanceof Array; // color 변수가 Array 인스턴스인가?
pattern instance Exp; // pattern 변수가 Exp의 인스턴스인가?
person instanceof Object; // person 변수가 Object의 인스턴스인가?
```
* ```(...) instanceof Object```를 사용했다면 확인하려는 변수가 객체라면 항상 true를 반환하지만, 원시값이라면 항상 false를 반환할 것이다.
