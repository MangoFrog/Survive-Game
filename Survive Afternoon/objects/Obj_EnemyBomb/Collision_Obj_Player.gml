/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 51DD2320
instance_destroy();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 29A79F18
/// @DnDApplyTo : {Obj_Player}
/// @DnDArgument : "expr" "-25"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "PlayerHealth"
with(Obj_Player) {
PlayerHealth += -25;

}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6D7674FC
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "Obj_Explode2"
/// @DnDSaveInfo : "objectid" "Obj_Explode2"
instance_create_layer(x + 0, y + 0, "Instances", Obj_Explode2);