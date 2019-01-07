function isPalindrome(str){
    let i = str.split("").reverse().join("");
    return i == str;
}

funciton longestPalindrome(str){
    var maxLength = 0;
    var longest = '';
    
    for(var i = 0; i < str.length; i++) {
        var subs = str.substr(i, str.length);

        for(var j = subs.length; j >= 0; j--){
            var subSubsStr = subs.subStr(0, j);
            console.log (subSubsStr)
            if (subSubsStr.length <= 1)
            continue;

            if (isPalindrome(subSubsStr)){
                if(subSubsStr.length > maxLength){
                    maxLength = subSubsStr.length;
                    longest = subSubsStr;
                }
            }
        }
    }
    if(longest == ''){
        longest = str[0];
    }
    return longest;
}