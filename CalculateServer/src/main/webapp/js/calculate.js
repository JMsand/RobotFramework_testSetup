
var result = 0;

function addValue(given){
	cleanMessage();
	const parsed = parseInt(given);
	isNaN(parsed) ? showException("Given value is not a number") : addNumber(parsed)
	setResultValue();
}

function addNumber(number){
	result = result + number
}

function setResultValue(){
	document.getElementById("result").innerHTML = result;
}

function cleanMessage(){
	document.getElementById("infoMessage").innerHTML = "";
}

function showException(message){
	document.getElementById("infoMessage").innerHTML = message;
}
