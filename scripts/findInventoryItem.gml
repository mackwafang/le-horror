///findInventoryItem(itemName);
/*
    return true if th e
*/
var item = argument0;
assert(is_string(item));
for (var i = 0; i < inventorySize; i++) {
    if (string_lower(inventory[i,inventoryData.item]) == string_lower(item)) {
        return true;
    }
}
return false;