//Drawing the Player's weapon
function draw_player_weapon()
{
// Drawing Weapon
//Weapon Spacing
var _XOffset = lengthdir_x( weaponOffsetDist, aimDir );
var _YOffset = lengthdir_y( weaponOffsetDist, aimDir );

//Flipping weapon
var _weaponYscl = 1;
if aimDir > 90 and aimDir < 270
{
_weaponYscl = -1;
}

draw_sprite_ext( Spr_Weapon, 0, x + _XOffset, centerY + _YOffset, 1, _weaponYscl, aimDir, c_white, 1)
depth = -bbox_bottom;
}

// Whenever different weapons add here





