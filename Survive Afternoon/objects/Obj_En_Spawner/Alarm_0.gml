/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 13747EB2
/// @DnDArgument : "steps" "70"
alarm_set(0, 70);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2CFBEA14
/// @DnDArgument : "var" "global.enemyCount"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "en_C"
if(global.enemyCount < en_C)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7BD9B239
	/// @DnDParent : 2CFBEA14
	/// @DnDArgument : "xpos" "random_range(120,1900)"
	/// @DnDArgument : "ypos" "random_range(130,1900)"
	/// @DnDArgument : "objectid" "Obj_Enemy"
	/// @DnDSaveInfo : "objectid" "Obj_Enemy"
	instance_create_layer(random_range(120,1900), random_range(130,1900), "Instances", Obj_Enemy);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3AC259BC
	/// @DnDParent : 2CFBEA14
	/// @DnDArgument : "xpos" "random_range(120,1900)"
	/// @DnDArgument : "ypos" "random_range(130,1900)"
	/// @DnDArgument : "objectid" "Obj_EnemyBomb"
	/// @DnDSaveInfo : "objectid" "Obj_EnemyBomb"
	instance_create_layer(random_range(120,1900), random_range(130,1900), "Instances", Obj_EnemyBomb);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3C8AC287
	/// @DnDParent : 2CFBEA14
	/// @DnDArgument : "xpos" "random_range(120,1900)"
	/// @DnDArgument : "ypos" "random_range(130,1900)"
	/// @DnDArgument : "objectid" "Obj_ShootingEnemy"
	/// @DnDSaveInfo : "objectid" "Obj_ShootingEnemy"
	instance_create_layer(random_range(120,1900), random_range(130,1900), "Instances", Obj_ShootingEnemy);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1707D3E9
	/// @DnDParent : 2CFBEA14
	/// @DnDArgument : "xpos" "random_range(120,1900)"
	/// @DnDArgument : "ypos" "random_range(130,1900)"
	/// @DnDArgument : "objectid" "Obj_EnemyDash"
	/// @DnDSaveInfo : "objectid" "Obj_EnemyDash"
	instance_create_layer(random_range(120,1900), random_range(130,1900), "Instances", Obj_EnemyDash);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4160043C
	/// @DnDParent : 2CFBEA14
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.enemyCount"
	global.enemyCount = 1;
}