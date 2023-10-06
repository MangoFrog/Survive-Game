/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 27BA9A2C
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "pl_spd"
/// @DnDArgument : "y_relative" "1"
x += 0;
y += pl_spd;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 78CA87D3
/// @DnDArgument : "expr" "Cat_Direction"
var l78CA87D3_0 = Cat_Direction;
switch(l78CA87D3_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 75C1C878
	/// @DnDParent : 78CA87D3
	case 0:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2E631B45
		/// @DnDParent : 75C1C878
		/// @DnDArgument : "imageind" ".3"
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_AppleCat"
		/// @DnDSaveInfo : "spriteind" "Spr_AppleCat"
		sprite_index = Spr_AppleCat;
		image_index += .3;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4F403A81
	/// @DnDParent : 78CA87D3
	/// @DnDArgument : "const" "180"
	case 180:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 76F072DD
		/// @DnDParent : 4F403A81
		/// @DnDArgument : "imageind" ".3"
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "Spr_AppleCatRight"
		/// @DnDSaveInfo : "spriteind" "Spr_AppleCatRight"
		sprite_index = Spr_AppleCatRight;
		image_index += .3;
		break;
}