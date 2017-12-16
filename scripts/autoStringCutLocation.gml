///autoStringCutLocation(string,length)
/*
    cut off the string if the string is longer than length
    return the location where it should be cut, return length otherwise if no spaces is found
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
            return i; 
        }
    }
    if (ds_queue_size(checkList) == 0) {break;}
    check = ds_queue_dequeue(checkList);
}
return length;
