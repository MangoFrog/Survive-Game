/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 567FCD43
/// @DnDApplyTo : {Obj_Player}
/// @DnDArgument : "expr" "-20"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "PlayerHealth"
with(Obj_Player) {
PlayerHealth += -20;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 19BE71E8
instance_destroy();