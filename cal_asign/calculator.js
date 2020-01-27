var a,b,c;
function plus(){
    //alert("hello");
    a=document.getElementById("in1").value;
    b=document.getElementById("in2").value;
    c=+a+ +b;
    //alert(add);
    document.getElementById("op").value=c;
}
function minus(){
    a=document.getElementById("in1").value;
    b=document.getElementById("in2").value;
    c=+a - +b;
    document.getElementById("op").value=c;
}
function multiply(){
    a=document.getElementById("in1").value;
    b=document.getElementById("in2").value;
    c=+a * +b;
    document.getElementById(op).value=c;
}
function divide(){
    a=document.getElementById("in1").value;
    b=document.getElementById("in2").value;
    c=+a / +b;
    document.getElementById("op").value=c;
}