/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 283A14AC
/// @DnDArgument : "x" "Obj_Player.x"
/// @DnDArgument : "y" "Obj_Player.y"
direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 469F7B58
/// @DnDArgument : "speed" "3"
speed = 3;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 46F92976
/// @DnDArgument : "var" "RedHealth"
/// @DnDArgument : "op" "3"
if(RedHealth <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3E06E4A7
	/// @DnDParent : 46F92976
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 145D4000
	/// @DnDParent : 46F92976
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Obj_ExplodeRed"
	/// @DnDSaveInfo : "objectid" "Obj_ExplodeRed"
	instance_create_layer(x + 0, y + 0, "Instances", Obj_ExplodeRed);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 63B35943
	/// @DnDParent : 46F92976
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Obj_RedToken"
	/// @DnDSaveInfo : "objectid" "Obj_RedToken"
	instance_create_layer(x + 0, y + 0, "Instances", Obj_RedToken);
}