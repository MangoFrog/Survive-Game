/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0D53221D
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "Obj_ExplodeRed"
/// @DnDSaveInfo : "objectid" "Obj_ExplodeRed"
instance_create_layer(x + 0, y + 0, "Instances", Obj_ExplodeRed);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 2E408CF5
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1EC20F59
/// @DnDApplyTo : other
with(other) instance_destroy();