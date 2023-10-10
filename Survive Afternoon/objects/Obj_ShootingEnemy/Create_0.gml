/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 06B73B39
speed = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 54D4229B
/// @DnDArgument : "expr" "random_range(3,6)"
/// @DnDArgument : "var" "eSpeed"
eSpeed = random_range(3,6);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0BD76E15
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4D5FF3C5
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "RedHealth"
RedHealth = 100;