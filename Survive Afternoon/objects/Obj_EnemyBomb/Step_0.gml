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
/// @DnDHash : 0119EE9C
/// @DnDArgument : "var" "PurpleHealth"
/// @DnDArgument : "op" "3"
if(PurpleHealth <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7AF66ADD
	/// @DnDParent : 0119EE9C
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 773F5EF7
	/// @DnDParent : 0119EE9C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Obj_Explode2"
	/// @DnDSaveInfo : "objectid" "Obj_Explode2"
	instance_create_layer(x + 0, y + 0, "Instances", Obj_Explode2);
}