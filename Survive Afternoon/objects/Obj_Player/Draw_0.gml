

draw_self();

if aimDir >= 0 and aimDir < 360
{
draw_player_weapon();
}

var vc = view_camera[0];
var cx = camera_get_view_x(vc);
var cy = camera_get_view_y(vc);
var cw = camera_get_view_width(vc);

draw_healthbar(cx + 100, cy + 150, cx + 900, cy + 170, ( PlayerHealth / 300 ) * 100, $FF00FFFF & $FFFFFF, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF00FFFF>>24) != 0), (($FF4D4D4D>>24) != 0));

draw_text(cx + 100, cy+ 300, string("PlayerHealth: ") + string(playerHit));

draw_text(cx + 100, cy+ 400, string("player Health CD:") + string(phCD));