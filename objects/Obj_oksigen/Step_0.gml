// Di dalam event Step obj_yang_disentuh
if(place_meeting(x, y, Alex)) {
	global.timer += 10
    instance_destroy(); // Hancurkan objek ini
}