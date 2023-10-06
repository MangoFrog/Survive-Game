/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 741831CA
/// @DnDArgument : "x" "-pl_spd"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "0"
/// @DnDArgument : "y_relative" "1"
x += -pl_spd;
y += 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4ECD1978
/// @DnDArgument : "var" "Cat_Direction"
Cat_Direction = 0;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 24E082F8
/// @DnDArgument : "expr" "Cat_Direction"
var l24E082F8_0 = Cat_Direction;
switch(l24E082F8_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2DA0C169
	/// @DnDParent : 24E082F8
	case 0:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 39FD38CE
		/// @DnDParent : 2DA0C169
		/// @DnDArgument : "imageind" ".3"
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_AppleCat"
		/// @DnDSaveInfo : "spriteind" "Spr_AppleCat"
		sprite_index = Spr_AppleCat;
		image_index += .3;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2C88AE64
	/// @DnDParent : 24E082F8
	/// @DnDArgument : "const" "180"
	case 180:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3D63EAED
		/// @DnDParent : 2C88AE64
		/// @DnDArgument : "imageind" ".3"
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_AppleCatRight"
		/// @DnDSaveInfo : "spriteind" "Spr_AppleCatRight"
		sprite_index = Spr_AppleCatRight;
		image_index += .3;
		break;
}