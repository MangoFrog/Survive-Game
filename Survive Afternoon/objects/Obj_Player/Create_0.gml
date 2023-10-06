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