/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 516541B1
/// @DnDArgument : "x" "Obj_Player.x "
/// @DnDArgument : "y" "Obj_Player.y "
x = Obj_Player.x ;
y = Obj_Player.y ;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 71EEB210
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 6CA63F99
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 21E780BE
/// @DnDArgument : "expr" "Gun_Direction"
var l21E780BE_0 = Gun_Direction;
switch(l21E780BE_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4F120895
	/// @DnDParent : 21E780BE
	case 0:
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 369BBCD0
		/// @DnDParent : 4F120895
		/// @DnDArgument : "objind" "Obj_Weapon"
		/// @DnDSaveInfo : "objind" "Obj_Weapon"
		instance_change(Obj_Weapon, true);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0F050FFD
	/// @DnDParent : 21E780BE
	/// @DnDArgument : "const" "180"
	case 180:
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3DA0CF4B
		/// @DnDParent : 0F050FFD
		/// @DnDArgument : "objind" "Obj_WeaponLeft"
		/// @DnDSaveInfo : "objind" "Obj_WeaponLeft"
		instance_change(Obj_WeaponLeft, true);
		break;
}