if keyboard_check_pressed(vk_space) {
	debug = !debug;
}

anim += keyboard_check_pressed(vk_up) - keyboard_check_pressed(vk_down);
anim = clamp(anim, 0, ds_list_size(menu_items) - 1);
anim_n = lerp(anim_n, anim, 0.35);
