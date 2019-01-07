String and Associatve Arrays pg. 44

1. Remove Blanks: given a string, returns the string, whithout blanks. Given "  play   that Funky music  ", returns a string containing "playthatFunkyMusic"

fucntion removeBlanks(str) {
    var result = str.split(" ").join("")
    return result
}


2. String: Get Digits: given a string, returns the integer made from the string's digits. Given "os1adjgh55668", the function should return all numbers, 155668.

function numbersOnly(str) {
    var reults = [];
    var splitted = str.split("");
    for(var i = 0; i < str.length; i ++) {
        if (! isNaN(splitted[i])) {
            result.push(splitted[i])
        }
    }
    result = resul.join("")
    return result
}


3. Acronym: given a string, returns teh string's acronym (first letters only, capitalized) Given " there's no free lunch  -  gotta pay yer way.  ", returns "TNFLGPYW. Given "Live from New York, it's Saturday Night Live!" returns, "LFSNISNL"

function acronym(str){
    var splitted = str.split(" ");
    var acro = []
    for(var i = 0; i < splitted.length; i++){
        acro.push(splitted[i][0])
    }
    acro=acro.join("")
    return acro
}