/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3E3E7EE5
/// @DnDArgument : "code" "pl_spd = 4;$(13_10)coolDown = 0;$(13_10)$(13_10)Cat_Direction = 0;$(13_10)$(13_10)moveDir = 0;$(13_10)moveSpd = 2;$(13_10)xspd = 0;$(13_10)yspd = 0;$(13_10)$(13_10)$(13_10)shootTimer = 0;$(13_10)bulletNum = Obj_bullet;$(13_10)bulletNum = 1;$(13_10)shootCooldown = 10;$(13_10)weaponSpread = 1;$(13_10)centerYOffset = -1$(13_10)centerY = y + centerYOffset; // Set inside of step event$(13_10)$(13_10)weaponOffsetDist = 48;$(13_10)aimDir = 0;$(13_10)$(13_10)weaponLength = sprite_get_bbox_right( Spr_Weapon ) - sprite_get_xoffset( Spr_Weapon );"
pl_spd = 4;
coolDown = 0;

Cat_Direction = 0;

moveDir = 0;
moveSpd = 2;
xspd = 0;
yspd = 0;


shootTimer = 0;
bulletNum = Obj_bullet;
bulletNum = 1;
shootCooldown = 10;
weaponSpread = 1;
centerYOffset = -1
centerY = y + centerYOffset; // Set inside of step event

weaponOffsetDist = 48;
aimDir = 0;

weaponLength = sprite_get_bbox_right( Spr_Weapon ) - sprite_get_xoffset( Spr_Weapon );

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 397EF0C7
/// @DnDInput : 3
/// @DnDArgument : "expr" "300"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "expr_2" "60"
/// @DnDArgument : "var" "PlayerHealth"
/// @DnDArgument : "var_1" "playerHit"
/// @DnDArgument : "var_2" "phCD"
PlayerHealth = 300;
playerHit = false;
phCD = 60;