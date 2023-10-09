/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1FB464CB
/// @DnDApplyTo : {Obj_Player}
/// @DnDArgument : "expr" "-10"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "PlayerHealth"
with(Obj_Player) {
PlayerHealth += -10;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 7445AD11
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 076E35D2
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "Obj_Explode"
/// @DnDSaveInfo : "objectid" "Obj_Explode"
instance_create_layer(x + 0, y + 0, "Instances", Obj_Explode);