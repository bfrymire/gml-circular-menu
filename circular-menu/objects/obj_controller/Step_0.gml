// Toggle debug mode
if keyboard_check(vk_control) {
	if keyboard_check_pressed(ord("D")) {
		debug = !debug;
	}
}

// Navigating menu
menu_selection += keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);
menu_selection = clamp(menu_selection, 0, ds_list_size(menu_items) - 1);
menu_selection_n = lerp(menu_selection_n, menu_selection, 0.35);

// Selecting menu item
if keyboard_check_pressed(vk_enter) {
	var menu_item = menu_items[| menu_selection];
	show_message_async(menu_item[? "text"]);
	// Put menu actions here
}
