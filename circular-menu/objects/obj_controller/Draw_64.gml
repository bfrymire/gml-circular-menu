// Select starting points to draw menu
var spr_w = 32;
var spr_h = spr_w

for(var i = 0; i < ds_list_size(menu_items); i++) {
    var map = menu_items[| i];
    
    // Procedurally generating sprites
	if !sprite_exists(map[? "sprite"]) {
	    var surf = surface_create(spr_w, spr_h);
	    var color = make_color_rgb(random(255), random(255), random (255));
	    surface_set_target(surf);
	    draw_clear(color);
	    surface_reset_target();
	    map[? "sprite"] = sprite_create_from_surface(surf, 0, 0, spr_w, spr_h, false, false, spr_w, spr_h / 2);
	    surface_free(surf);
	}
	
	// Drawing menu items
    var current_dir = i * menu_dir - anim_n * menu_dir;
	var xx = start_x + lengthdir_x(menu_len, current_dir);
	var yy = start_y + lengthdir_y(menu_len, -current_dir);
	if sprite_exists(map[? "sprite"]) {
	    var spr_x = start_x + lengthdir_x(menu_len - 16, -current_dir);
	    var spr_y = start_y + lengthdir_y(menu_len - 16, -current_dir);
	    draw_sprite_ext(map[? "sprite"], 0, spr_x, spr_y, 1, 1, -current_dir, c_white, 1);
	}
	
	// Setting the c
	if abs(anim - i) < 0.5 {
		draw_set_color(c_teal);
	} else {
		draw_set_color(c_white);
	}
	draw_set_valign(fa_middle);
	draw_text_transformed(xx, yy, map[? "text"], 1, 1, -current_dir);
	draw_set_valign(-1);
}
draw_set_color(c_white);

debug_text = "Created by @frymangames\n";
debug_text += "Press up/down keys to navigate the menu.\n";
if debug {
	
}
draw_set_font(fnt_roboto);
draw_text(10, 10, debug_text);
draw_set_font(-1);
