/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 2744B180
/// @DnDArgument : "x" "pl_spd"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "0"
/// @DnDArgument : "y_relative" "1"
x += pl_spd;
y += 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E4E5DE0
/// @DnDArgument : "expr" "180"
/// @DnDArgument : "var" "Cat_Direction"
Cat_Direction = 180;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 37CDD3B6
/// @DnDArgument : "expr" "Cat_Direction"
var l37CDD3B6_0 = Cat_Direction;
switch(l37CDD3B6_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 46CE6EA5
	/// @DnDParent : 37CDD3B6
	case 0:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 275772C3
		/// @DnDParent : 46CE6EA5
		/// @DnDArgument : "imageind" ".3"
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_AppleCat"
		/// @DnDSaveInfo : "spriteind" "Spr_AppleCat"
		sprite_index = Spr_AppleCat;
		image_index += .3;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1A5A3790
	/// @DnDParent : 37CDD3B6
	/// @DnDArgument : "const" "180"
	case 180:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 650DF9CE
		/// @DnDParent : 1A5A3790
		/// @DnDArgument : "imageind" ".3"
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_AppleCatRight"
		/// @DnDSaveInfo : "spriteind" "Spr_AppleCatRight"
		sprite_index = Spr_AppleCatRight;
		image_index += .3;
		break;
}