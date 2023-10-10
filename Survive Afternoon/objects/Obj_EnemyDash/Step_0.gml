/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 506C0832
/// @DnDArgument : "x" "Obj_Player.x"
/// @DnDArgument : "y" "Obj_Player.y"
direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1DE6DE1D
/// @DnDArgument : "var" "YellowHealth"
/// @DnDArgument : "op" "3"
if(YellowHealth <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 144026A8
	/// @DnDParent : 1DE6DE1D
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 386DE70C
	/// @DnDParent : 1DE6DE1D
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Obj_ExplodeYellow"
	/// @DnDSaveInfo : "objectid" "Obj_ExplodeYellow"
	instance_create_layer(x + 0, y + 0, "Instances", Obj_ExplodeYellow);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 42FB1B4C
	/// @DnDParent : 1DE6DE1D
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "Obj_YellowToken"
	/// @DnDSaveInfo : "objectid" "Obj_YellowToken"
	instance_create_layer(x + 0, y + 0, "Instances", Obj_YellowToken);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 39EC9A0E
/// @DnDDisabled : 1
/// @DnDArgument : "var" "dashCooldown"
/// @DnDArgument : "value" "true"
/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 29AFBC44
/// @DnDDisabled : 1
/// @DnDParent : 39EC9A0E
/// @DnDArgument : "speed" "10"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4C6F0BD9
/// @DnDDisabled : 1
/// @DnDParent : 39EC9A0E
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "_cooldown"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 38B5368A
/// @DnDDisabled : 1
/// @DnDParent : 39EC9A0E
/// @DnDArgument : "var" "_cooldown"
/// @DnDArgument : "op" "3"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0287CF98
/// @DnDDisabled : 1
/// @DnDParent : 38B5368A
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "dashCooldown"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 32D6D710
/// @DnDDisabled : 1
/// @DnDParent : 38B5368A
/// @DnDArgument : "expr" "15"
/// @DnDArgument : "var" "_cooldown"

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5AAC889A
/// @DnDDisabled : 1
/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 641913CD
/// @DnDDisabled : 1
/// @DnDParent : 5AAC889A
/// @DnDArgument : "speed" "1"