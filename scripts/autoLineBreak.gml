///autoLineBreak(string,length)
var str = argument[0];
var l = argument[1];
var returnString = "";
if (string_length(str) > l) {
    while (string_length(str) > 0) {
        var loc = autoStringCutLocation(str,l);
        returnString += autoStringCut(str,l)+"#";
        str = string_copy(str,loc+1,string_length(str)-loc);
    }
    return returnString;
}
else {
    return str;
}