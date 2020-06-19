// Randomize for procedurally generated sprites
randomize();

tooltip_text = "Circular menu example\n";
tooltip_text += "github.com/bfrymire/circular-menu\n";
tooltip_text += "Press up/down keys to navigate the menu.";

menu_items = [];
// Weapons
var menu_item = ds_map_create();
menu_item[? "text"] = "Weapons";
menu_item[? "sprite"] = noone; // Replace with actual sprite
menu_items[0] = menu_item;
// Potions
menu_item = ds_map_create();
menu_item[? "text"] = "Potions";
menu_item[? "sprite"] = noone; // Replace with actual sprite
menu_items[1] = menu_item;
// Items
menu_item = ds_map_create();
menu_item[? "text"] = "Items";
menu_item[? "sprite"] = noone; // Replace with actual sprite
menu_items[2] = menu_item;
// Crafting
menu_item = ds_map_create();
menu_item[? "text"] = "Crafting";
menu_item[? "sprite"] = noone; // Replace with actual sprite
menu_items[3] = menu_item;
// Smithing
menu_item = ds_map_create();
menu_item[? "text"] = "Smithing";
menu_item[? "sprite"] = noone; // Replace with actual sprite
menu_items[4] = menu_item;

// Menu animation variables
menu_selection = 0;
menu_selection_n = 0;
menu_len = 200;
menu_dir = 25;
start_x = display_get_gui_width() * 0.25;
start_y = display_get_gui_height() * 0.5;
