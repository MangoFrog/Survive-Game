/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 23A5A237
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "Obj_RedShot"
/// @DnDSaveInfo : "objectid" "Obj_RedShot"
instance_create_layer(x + 0, y + 0, "Instances", Obj_RedShot);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 29E5162E
/// @DnDArgument : "steps" "60"
alarm_set(0, 60);