///autoStringCut(string,length)
/*
    cut off the string if the string is longer than length
    return the string after being cut, return the string that is cut into size length otherwise
*/
var str = argument0;
var length = argument1;
var checkList = ds_queue_create();
ds_queue_enqueue(checkList,"\");
ds_queue_enqueue(checkList," ");
var check = ds_queue_dequeue(checkList);

while (ds_queue_size(checkList) >= 0) {
    for(var i = length; i >= 1; i--) {
        if (string_char_at(str,i) == check || (ds_queue_size(checkList) == 0 && i == string_length(str))) {
            if (string_char_at(str,i) == "\") {
                str = string_copy(str,1,i-1);
            }
            return string_copy(str,1,i);
        }
    }
    if (ds_queue_size(checkList) == 0) {break;}
    check = ds_queue_dequeue(checkList);
}
return string_copy(str,0,length);
