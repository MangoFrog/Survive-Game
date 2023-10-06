/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2032A217
/// @DnDInput : 4
/// @DnDArgument : "var" "vc"
/// @DnDArgument : "value" "view_camera[0]"
/// @DnDArgument : "var_1" "cx"
/// @DnDArgument : "value_1" "camera_get_view_x(vc)"
/// @DnDArgument : "var_2" "cy"
/// @DnDArgument : "value_2" "camera_get_view_y(vc)"
/// @DnDArgument : "var_3" "cw"
/// @DnDArgument : "value_3" "camera_get_view_width(vc)"
var vc = view_camera[0];
var cx = camera_get_view_x(vc);
var cy = camera_get_view_y(vc);
var cw = camera_get_view_width(vc);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 33CC1FE2
/// @DnDArgument : "color" "$FF4CFFFF"
draw_set_colour($FF4CFFFF & $ffffff);
var l33CC1FE2_0=($FF4CFFFF >> 24);
draw_set_alpha(l33CC1FE2_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 139DFA25
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 12EFB5A2
/// @DnDArgument : "font" "fnt_score"
/// @DnDSaveInfo : "font" "fnt_score"
draw_set_font(fnt_score);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 744555AE
/// @DnDArgument : "x" "cx+(cw/2)"
/// @DnDArgument : "y" "cy+32"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "theScore"
draw_text(cx+(cw/2), cy+32, string("Score: ") + string(theScore));