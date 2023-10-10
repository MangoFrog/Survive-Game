/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 506C0832
/// @DnDArgument : "x" "Obj_Player.x"
/// @DnDArgument : "y" "Obj_Player.y"
direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0992DA92
/// @DnDArgument : "speed" "4"
speed = 4;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74F36528
/// @DnDArgument : "var" "BlueHealth"
/// @DnDArgument : "op" "3"
if(BlueHealth <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 245B5D3C
	/// @DnDParent : 74F36528
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 47EDB60A
	/// @DnDParent : 74F36528
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Obj_Explode"
	/// @DnDSaveInfo : "objectid" "Obj_Explode"
	instance_create_layer(x + 0, y + 0, "Instances", Obj_Explode);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3B8213A2
	/// @DnDParent : 74F36528
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Obj_BlueToken"
	/// @DnDSaveInfo : "objectid" "Obj_BlueToken"
	instance_create_layer(x + 0, y + 0, "Instances", Obj_BlueToken);
}