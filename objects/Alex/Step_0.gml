// Di dalam event Create obj_player
skor = 0; // Inisialisasi skor
jumlah_lompatan = 0; // Inisialisasi jumlah lompatan
kiri=keyboard_check(vk_left);
kanan=keyboard_check(vk_right);
ngibrit= 6;
/////////////////////////////////////////////////////////////////
jalan =  kanan - kiri;

if (keyboard_check(vk_shift)) {
    move_x = move_speed * jalan * ngibrit;
} else {
    move_x = jalan * move_speed;
}

if (move_x != 0 && waktu_terakhir_sfx <= 0) {
    sprite_index = Alex_jalan; // Ganti sprite pemain dengan sprite berjalan
    audio_play_sound(walk, 1, false); // Mainkan sfx bergerak
    waktu_terakhir_sfx = jeda_sfx; // Atur waktu terakhir sfx
} else if (waktu_terakhir_sfx > 0) {
    waktu_terakhir_sfx -= 1; // Kurangi waktu terakhir sfx
} else {
    sprite_index = Alex_diam; // Ganti sprite pemain dengan sprite diam jika pemain tidak bergerak
}

/////////////////////////////////////////////////////////////
if (place_meeting(x, y+2, Obj_permukaan))
{
	move_y = 0;
	if (keyboard_check(vk_space) && jumlah_lompatan < 3) {
		audio_play_sound(jump, 1, false);
		sprite_index = Alex_lompat;
        move_y = -jump_speed; // Lompat
        jumlah_lompatan += 1; // Tambahkan 1 ke jumlah lompatan
    }
}
else if (move_y <5) move_y += 0.46;

move_and_collide(move_x, move_y, Obj_permukaan, 4, 0, 0, move_speed, -1);

if (move_x != 0) {
    image_xscale = 0.1 * sign(move_x); // Ubah skala gambar berdasarkan arah
    image_yscale = 0.1; // Ubah skala gambar
}

if (!place_meeting(x+move_x, y+2, Obj_permukaan) && place_meeting(x+move_x, y+10, Obj_permukaan))
{
		move_y = abs(move_x);
		move_x = 0;
}

///////////////////////////////////////////////////////////
//////////////////
// Cek jika pemain menyentuh objek
if (place_meeting(x, y, Obj_cadas)) {
    // Matikan pemain
    instance_destroy();
	global.pec1=0;
	global.pec2=0;
	global.pec3=0;
	global.s1 = 0; 
	global.s2 = 0;
	global.s3 = 0;
    // Pindah ke ruangan lain
    room_goto(GameOver);
}else if (place_meeting(x, y, Obj_Rock)) {
    // Matikan pemain
    instance_destroy();
	global.pec1=0;
	global.pec2=0;
	global.pec3=0;
	global.s1 = 0; 
	global.s2 = 0;
	global.s3 = 0;
    // Pindah ke ruangan lain
    room_goto(GameOver);
}else if (place_meeting(x, y, Obj_rover)) {
    // Matikan pemain
    instance_destroy();
	global.pec1=0;
	global.pec2=0;
	global.pec3=0;
	global.s1 = 0; 
	global.s2 = 0;
	global.s3 = 0;
    // Pindah ke ruangan lain
    room_goto(GameOver);
}else if (place_meeting(x, y, Obj_Jurang)) {
    // Matikan pemain
    instance_destroy();
	global.pec1=0;
	global.pec2=0;
	global.pec3=0;
	global.s1 = 0; 
	global.s2 = 0;
	global.s3 = 0;
    // Pindah ke ruangan lain
    room_goto(GameOver);
}else if (place_meeting(x, y, Obj_portal)) {
    
    // Pindah ke ruangan lain
    room_goto(Level2);
}else if (place_meeting(x, y, Obj_plane)) {
    
    // Pindah ke ruangan lain
    room_goto(GameWin);
}



if (keyboard_check(vk_shift)) {
    show_debug_message("Shift key is pressed");
} else {
    show_debug_message("Shift key is not pressed");
}