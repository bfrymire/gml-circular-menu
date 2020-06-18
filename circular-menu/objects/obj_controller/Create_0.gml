// Randomize for procedurally generated sprites
randomize();

tooltip_text = "Circular menu example\n";
tooltip_text += "github.com/bfrymire/circular-menu\n";
tooltip_text += "Press up/down keys to navigate the menu.";

menu_items = ds_list_create();
// Weapons
var map = ds_map_create();
map[? "text"] = "Weapons";
map[? "sprite"] = noone; // Replace with actual sprite
ds_list_add(menu_items, map);
// Potions
var map = ds_map_create();
map[? "text"] = "Potions";
map[? "sprite"] = noone; // Replace with actual sprite
ds_list_add(menu_items, map);
// Items
var map = ds_map_create();
map[? "text"] = "Items";
map[? "sprite"] = noone; // Replace with actual sprite
ds_list_add(menu_items, map);
// Crafting
var map = ds_map_create();
map[? "text"] = "Crafting";
map[? "sprite"] = noone; // Replace with actual sprite
ds_list_add(menu_items, map);
// Smithing
var map = ds_map_create();
map[? "text"] = "Smithing";
map[? "sprite"] = noone; // Replace with actual sprite
ds_list_add(menu_items, map);

// Menu animation variables
menu_selection = 0;
menu_selection_n = 0;
menu_len = 200;
menu_dir = 25;
start_x = display_get_gui_width() * 0.25;
start_y = display_get_gui_height() * 0.5;
