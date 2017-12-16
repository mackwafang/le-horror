///addInventoryItem(item)
var item = argument[0];

for (var i = 0; i < inventorySize; i++) {
    if (object_index == obj_item) {
        instance_destroy();
    }
    if (inventory[i,inventoryData.item] == "") {
        inventory[i,inventoryData.item] = item;
        inventory[i,inventoryData.quantity] += 1;
        break;
    }
    else if (string_lower(inventory[i,inventoryData.item]) == string_lower(item)) {
        inventory[i,inventoryData.quantity] += 1;
        break;
    }
}
var int = instance_create(obj_player.x,obj_player.y,obj_interactable);
int.words = "You picked up "+string(item)+".";
int.activeOnContact = true;
int.destroyOnContact = true;
int.requiredDir = obj_player.facing;
