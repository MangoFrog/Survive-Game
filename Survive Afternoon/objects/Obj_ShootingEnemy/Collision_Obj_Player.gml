/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 703BD933
/// @DnDApplyTo : {Obj_Player}
/// @DnDArgument : "expr" "-15"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "PlayerHealth"
with(Obj_Player) {
PlayerHealth += -15;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7CA475AE
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 173153AF
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "Obj_ExplodeRed"
/// @DnDSaveInfo : "objectid" "Obj_ExplodeRed"
instance_create_layer(x + 0, y + 0, "Instances", Obj_ExplodeRed);