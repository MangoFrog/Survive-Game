/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 570B2532
/// @DnDArgument : "code" "$(13_10)if(PlayerHealth <= 0)$(13_10){$(13_10)	instance_destroy();$(13_10)}$(13_10)#region$(13_10)upKey = keyboard_check( ord("W") );$(13_10)leftKey = keyboard_check( ord("A") );$(13_10)downKey = keyboard_check( ord("S") );$(13_10)rightKey = keyboard_check( ord("D") );$(13_10)$(13_10)shootKey = mouse_check_button( mb_left );$(13_10)$(13_10)$(13_10)$(13_10)#endregion$(13_10)$(13_10)#region$(13_10)//Swapping the Weapon$(13_10)var _playerWeapons = Obj_Weapon;$(13_10)$(13_10)$(13_10)$(13_10)#endregion$(13_10)// Shooting the Weapon$(13_10)#region$(13_10)if shootTimer > 0 {shootTimer--; };$(13_10)if shootKey and shootTimer <= 0 {$(13_10)$(13_10)//Reset shoot timer$(13_10)shootTimer = shootCooldown;$(13_10)$(13_10)$(13_10)// Create the bullet$(13_10)var _xOffset = lengthdir_x( weaponLength + weaponOffsetDist, aimDir );$(13_10)var _yOffset = lengthdir_y( weaponLength + weaponOffsetDist, aimDir );$(13_10)$(13_10)var _spread = weaponSpread;$(13_10)var _spreadDiv = _spread / max( bulletNum-1, 1 );$(13_10)$(13_10)//Creating the correct number of bullets$(13_10)for ( var i = 0; i < bulletNum; i++)$(13_10){$(13_10)var _bulletInst = instance_create_depth( x + _xOffset + i, centerY + _yOffset, depth-100, Obj_bullet ); // **Storing EACH CREATED INSTANCE of object**$(13_10)$(13_10)// Change the Bullet's direction$(13_10)with( _bulletInst )$(13_10){$(13_10)dir = other.aimDir - _spread/2 + _spreadDiv*i; // Setting instance diretion to direction of where player is aiming$(13_10)$(13_10)//Turning bullet to correct direction at creation point if necessary$(13_10)if dirFix == true { image_angle = dir; }$(13_10)}$(13_10)}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)#endregion$(13_10)$(13_10)// Player Movement$(13_10)#region$(13_10)// Getting Player Movement Direction$(13_10)var _horizKey = rightKey - leftKey;$(13_10)var _vertKey = downKey - upKey;$(13_10)moveDir = point_direction( 0, 0, _horizKey, _vertKey);$(13_10)$(13_10)//Getting X & Y speeds$(13_10)var _spd = 0;$(13_10)var _inputLevel = point_distance( 0, 0, _horizKey, _vertKey);$(13_10)_inputLevel = clamp( _inputLevel, 0, 1 );$(13_10)_spd = moveSpd * _inputLevel;$(13_10)$(13_10)xspd = lengthdir_x( _spd, moveDir );$(13_10)yspd = lengthdir_y( _spd, moveDir );$(13_10)$(13_10)// Player Collisions$(13_10)if place_meeting( x + xspd, y, Obj_Block )$(13_10){$(13_10)xspd = 0;$(13_10)}$(13_10)if place_meeting( x, y + yspd, Obj_Block )$(13_10){$(13_10)yspd = 0;$(13_10)}$(13_10)$(13_10)$(13_10)//Moving the Player$(13_10)x += xspd;$(13_10)y += yspd;$(13_10)$(13_10)//Depth$(13_10)depth = -bbox_bottom;$(13_10)#endregion$(13_10)$(13_10)// Player Aiming Inputs$(13_10)#region$(13_10)centerY = y + centerYOffset;$(13_10)$(13_10)// Aiming$(13_10)aimDir = point_direction( x, centerY, mouse_x, mouse_y)$(13_10)$(13_10)#endregion$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)/*$(13_10)coolDown += -1;$(13_10)$(13_10)$(13_10)var l18B874EE_0;$(13_10)l18B874EE_0 = mouse_check_button(mb_left);$(13_10)if (l18B874EE_0)$(13_10){$(13_10)	if(coolDown <= 0)$(13_10)	{$(13_10)		instance_create_layer(x + 0, y + 0, "Instances", Obj_bullet);$(13_10)	$(13_10)		coolDown = 10;$(13_10)	}$(13_10)}$(13_10)*/$(13_10)$(13_10)$(13_10)/**/$(13_10)$(13_10)"

if(PlayerHealth <= 0)
{
	instance_destroy();
}
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


/**/

/**/

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 591C36E0
/// @DnDArgument : "var" "PlayerHealth"
/// @DnDArgument : "op" "3"
if(PlayerHealth <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 30FA1386
	/// @DnDParent : 591C36E0
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3C31DE18
	/// @DnDParent : 591C36E0
	/// @DnDArgument : "objectid" "Obj_ExplodeRed"
	/// @DnDSaveInfo : "objectid" "Obj_ExplodeRed"
	instance_create_layer(0, 0, "Instances", Obj_ExplodeRed);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 28D30930
/// @DnDArgument : "var" "dash_Able"
/// @DnDArgument : "value" "false"
if(dash_Able == false)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25577C71
	/// @DnDParent : 28D30930
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "_dashCooldown"
	_dashCooldown += -1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A006605
	/// @DnDParent : 28D30930
	/// @DnDArgument : "var" "_dashCooldown"
	/// @DnDArgument : "op" "3"
	if(_dashCooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7FA71C8B
		/// @DnDInput : 2
		/// @DnDParent : 5A006605
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "120"
		/// @DnDArgument : "var" "dash_Able"
		/// @DnDArgument : "var_1" "_dashCooldown"
		dash_Able = true;
		_dashCooldown = 120;
	}
}