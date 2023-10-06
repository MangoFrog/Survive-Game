/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 487FC4A2
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "var" "en_C"
en_C = 8;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7A38495B
/// @DnDArgument : "var" "enemyCount"
global.enemyCount = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7E359E25
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2797A119
/// @DnDArgument : "steps" "1800"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 1800);