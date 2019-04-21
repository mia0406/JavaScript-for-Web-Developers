## Chapter 5. 참조 타입
#### 참조 타입
* 객체(=참조값)
  * 특정 '참조 타입'의 인스턴스
* 참조 타입은 클래스와 서로 다른 개념이다.
* 객체가 가져야 할 프로퍼티와 메서드를 정의한다는 점 때문에 '객체 정의'라고도 불린다.

```javscript
var person = new Object(); // Object() 생성자 이용하여 객체 생성
```

#### 리터럴 표기법
```javascript
var person = {
		name: "mia",
		age: 25,
		job: "Software Engineer",
    5: true // 프로퍼티 "5"를 가진 객체를 생성
};
```
* 숫자형 프로퍼티는 자동으로 문자열로 바꾼다.

* 중괄호 안쪽을 빈 공간으로 남겨두면, new Object()와 동일하다고 보면 된다.
```javascript
var person = {}; // new Object()와 동일
person.name = "mia";
```
* 리터럴 표기법을 이용햇 객체를 생성할 때는 Object 생성자를 사용하지 않는다.


#### 점 표기법/대괄호 표기법
```javascript
var person = {
  name = "mia";
};

alert(person[name]); // 대괄호 표기법
alert(person.name); // 점 표기법
```
* 대괄호 표기법 쓰기 좋은 경우
  * 프로퍼티 이름에 문법 에러를 일으키는 문자가 들어있거나 키워드 및 예약어에 해당하는 프로퍼티 이름을 사용했을 때
   * 문법 에러를 일으키는 문자 : 변수 이름에 공백이 들어있을 경우...
  * 프로퍼티 이름에 변수가 필요할 때
