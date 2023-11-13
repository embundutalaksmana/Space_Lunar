// Di dalam event Draw GUI obj_score
draw_text(32, 120, "Bagian 1: " + string(global.pec1)); // Tampilkan skor di pojok kiri atas
draw_text(32, 140, "Bagian 2: " + string(global.pec2));
draw_text(32, 160, "Bagian 3: " + string(global.pec3));
draw_text(32, 180, "Total: " + string(global.pec1 + global.pec2 + global.pec3));