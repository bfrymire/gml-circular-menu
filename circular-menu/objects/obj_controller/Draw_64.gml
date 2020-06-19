// Iterate through all menu items
var menu_items_len = array_length_1d(menu_items);
for(var i = 0; i < menu_items_len; i++) {
    var map = menu_items[i];
    
    // Procedurally generating sprites
	if !sprite_exists(map[? "sprite"]) {
		var spr_w = 32;
		var spr_h = spr_w;
	    var surf = surface_create(spr_w, spr_h);
	    var color = make_color_rgb(random(255), random(255), random (255));
	    surface_set_target(surf);
	    draw_clear(color);
	    surface_reset_target();
	    map[? "sprite"] = sprite_create_from_surface(surf, 0, 0, spr_w, spr_h, false, false, spr_w, spr_h / 2);
	    surface_free(surf);
	}
	
	// Drawing menu items sprites
    var current_dir = i * menu_dir - menu_selection_n * menu_dir;
	var xx = start_x + lengthdir_x(menu_len, current_dir);
	var yy = start_y + lengthdir_y(menu_len, -current_dir);
	if sprite_exists(map[? "sprite"]) {
	    var spr_x = start_x + lengthdir_x(menu_len - 16, -current_dir);
	    var spr_y = start_y + lengthdir_y(menu_len - 16, -current_dir);
	    draw_sprite_ext(map[? "sprite"], 0, spr_x, spr_y, 1, 1, -current_dir, c_white, 1);
	}
	
	// Drawing menu item text
	draw_set_valign(fa_middle);
	if abs(menu_selection - i) < 0.5 {
		draw_set_color(c_black);
		for(var k = 0; k < 4; k ++) {
			draw_text_transformed(xx + lengthdir_x(1, 90 * k), yy + lengthdir_y(1, 90 * k), map[? "text"], 1, 1, -current_dir);
		}
		draw_set_color(c_yellow);
		draw_text_transformed(xx, yy, map[? "text"], 1, 1, -current_dir);
	} else {
		draw_set_color(c_white);
		draw_text_transformed(xx, yy, map[? "text"], 1, 1, -current_dir);
	}
	draw_set_valign(-1);
}

draw_set_color(c_white);
draw_text(10, 10, tooltip_text);
draw_set_color(c_black);
