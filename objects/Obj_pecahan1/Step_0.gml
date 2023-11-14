// Di dalam event Step obj_yang_disentuh
if(place_meeting(x, y, Alex)) {
	global.pec1 += 1;
	global.s1+= 1;
    instance_destroy(); // Hancurkan objek ini
}