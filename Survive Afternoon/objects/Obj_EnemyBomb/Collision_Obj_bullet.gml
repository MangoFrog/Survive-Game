/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 46CABD51
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "Obj_Explode2"
/// @DnDSaveInfo : "objectid" "Obj_Explode2"
instance_create_layer(x + 0, y + 0, "Instances", Obj_Explode2);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 23D54D46
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 3D0365BC
/// @DnDApplyTo : other
with(other) instance_destroy();