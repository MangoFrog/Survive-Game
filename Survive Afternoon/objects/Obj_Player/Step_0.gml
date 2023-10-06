
#region
upKey = keyboard_check( ord("W") );
leftKey = keyboard_check( ord("A") );
downKey = keyboard_check( ord("S") );
rightKey = keyboard_check( ord("D") );

shootKey = mouse_check_button( mb_left );



#endregion

#region
//Swapping the Weapon
var _playerWeapons = Obj_Weapon;



#endregion
// Shooting the Weapon
#region
if shootTimer > 0 {shootTimer--; };
if shootKey and shootTimer <= 0 {

//Reset shoot timer
shootTimer = shootCooldown;


// Create the bullet
var _xOffset = lengthdir_x( weaponLength + weaponOffsetDist, aimDir );
var _yOffset = lengthdir_y( weaponLength + weaponOffsetDist, aimDir );

var _spread = weaponSpread;
var _spreadDiv = _spread / max( bulletNum-1, 1 );

//Creating the correct number of bullets
for ( var i = 0; i < bulletNum; i++)
{
var _bulletInst = instance_create_depth( x + _xOffset + i, centerY + _yOffset, depth-100, Obj_bullet ); // **Storing EACH CREATED INSTANCE of object**

// Change the Bullet's direction
with( _bulletInst )
{
dir = other.aimDir - _spread/2 + _spreadDiv*i; // Setting instance diretion to direction of where player is aiming

//Turning bullet to correct direction at creation point if necessary
if dirFix == true { image_angle = dir; }
}
}
}



#endregion

// Player Movement
#region
// Getting Player Movement Direction
var _horizKey = rightKey - leftKey;
var _vertKey = downKey - upKey;
moveDir = point_direction( 0, 0, _horizKey, _vertKey);

//Getting X & Y speeds
var _spd = 0;
var _inputLevel = point_distance( 0, 0, _horizKey, _vertKey);
_inputLevel = clamp( _inputLevel, 0, 1 );
_spd = moveSpd * _inputLevel;

xspd = lengthdir_x( _spd, moveDir );
yspd = lengthdir_y( _spd, moveDir );

// Player Collisions
if place_meeting( x + xspd, y, Obj_Block )
{
xspd = 0;
}
if place_meeting( x, y + yspd, Obj_Block )
{
yspd = 0;
}


//Moving the Player
x += xspd;
y += yspd;

//Depth
depth = -bbox_bottom;
#endregion

// Player Aiming Inputs
#region
centerY = y + centerYOffset;

// Aiming
aimDir = point_direction( x, centerY, mouse_x, mouse_y)

#endregion






/*
coolDown += -1;


var l18B874EE_0;
l18B874EE_0 = mouse_check_button(mb_left);
if (l18B874EE_0)
{
	if(coolDown <= 0)
	{
		instance_create_layer(x + 0, y + 0, "Instances", Obj_bullet);
	
		coolDown = 10;
	}
}
*/


