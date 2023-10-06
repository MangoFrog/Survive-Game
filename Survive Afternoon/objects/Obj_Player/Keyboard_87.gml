/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 32C24F5A
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-pl_spd"
/// @DnDArgument : "y_relative" "1"
x += 0;
y += -pl_spd;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5BE221D1
/// @DnDArgument : "expr" "Cat_Direction"
var l5BE221D1_0 = Cat_Direction;
switch(l5BE221D1_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4656F9DF
	/// @DnDParent : 5BE221D1
	case 0:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3EDCD3A4
		/// @DnDParent : 4656F9DF
		/// @DnDArgument : "imageind" ".3"
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_AppleCat"
		/// @DnDSaveInfo : "spriteind" "Spr_AppleCat"
		sprite_index = Spr_AppleCat;
		image_index += .3;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6C888206
	/// @DnDParent : 5BE221D1
	/// @DnDArgument : "const" "180"
	case 180:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0C972613
		/// @DnDParent : 6C888206
		/// @DnDArgument : "imageind" ".3"
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_AppleCatRight"
		/// @DnDSaveInfo : "spriteind" "Spr_AppleCatRight"
		sprite_index = Spr_AppleCatRight;
		image_index += .3;
		break;
}