/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 309A7ACE
/// @DnDArgument : "speed" "4"
speed = 4;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 173CA19D
/// @DnDArgument : "x" "Obj_Player.x"
/// @DnDArgument : "y" "Obj_Player.y"
direction = point_direction(x, y, Obj_Player.x, Obj_Player.y);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5211BE14
/// @DnDArgument : "expr" "random_range(3,6)"
/// @DnDArgument : "var" "eSpeed"
eSpeed = random_range(3,6);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 711B8E08
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "dashCooldown"
dashCooldown = true;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53CD6E71
/// @DnDArgument : "expr" "30"
/// @DnDArgument : "var" "_cooldown"
_cooldown = 30;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 12960410
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5E458AC4
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "var" "YellowHealth"
YellowHealth = 50;