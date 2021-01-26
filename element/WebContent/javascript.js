function func1(){
    alert("명시적 함수!");
}

var func2;
func2 = function(){
    alert("익명 함수!");
}

function btnEventHandler(){
    alert("한번클릭");
}

function func3(input){
    alert(input.id+input.name+input.value);
}

function funcAlert(){
    alert("하이하이");
}

function funcConfirm(){
    var isConfirm=confirm("한강 ㄱ");
    console.log(isConfirm);
}

function funcPrompt(){
    var input=prompt("이름이 뭐니?", "기본값");
    console.log(input);
}