// Di dalam event Step obj_yang_disentuh
if(place_meeting(x, y, Alex)) {
	global.pec2 += 1;
	global.s2+= 3;
    instance_destroy(); // Hancurkan objek ini
}