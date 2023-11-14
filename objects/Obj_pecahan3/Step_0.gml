// Di dalam event Step obj_yang_disentuh
if(place_meeting(x, y, Alex)) {
	global.pec3 += 1;
	global.s3+= 5;
    instance_destroy(); // Hancurkan objek ini
}