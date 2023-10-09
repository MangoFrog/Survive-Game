/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7660587D
/// @DnDArgument : "var" "dash_Able"
/// @DnDArgument : "value" "true"
if(dash_Able == true)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 5BFCED25
	/// @DnDParent : 7660587D
	/// @DnDArgument : "x" "mouse_x"
	/// @DnDArgument : "y" "mouse_y"
	direction = point_direction(x, y, mouse_x, mouse_y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3D7E97A4
	/// @DnDParent : 7660587D
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "dash_Able"
	dash_Able = false;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4BE17C5C
	/// @DnDParent : 7660587D
	/// @DnDArgument : "speed" "30"
	speed = 30;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 3B9A35C2
	/// @DnDParent : 7660587D
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "3"
	alarm_set(3, 15);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2472663A
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 23B4A417
	/// @DnDParent : 2472663A
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 4B821E56
	/// @DnDParent : 2472663A
	exit;
}