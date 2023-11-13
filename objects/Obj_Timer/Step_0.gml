// Di dalam event Step obj_timer
global.timer -= 1/room_speed; // Kurangi timer setiap detik

if(global.timer <= 0) {
    room_goto(GameOver); // Pindah ke ruangan game over
}
