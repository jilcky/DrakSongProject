/// @description  draw_background_ext(back:index, x:number, y:number, xscale:number, yscale:number, rot:number, :color, alpha:number)
/// @function  draw_background_ext
/// @param back:index
/// @param  x:number
/// @param  y:number
/// @param  xscale:number
/// @param  yscale:number
/// @param  rot:number
/// @param  :color
/// @param  alpha:number
if (argument_count != 8) return lua_show_error("draw_background_ext: Expected 8 arguments, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("draw_background_ext: Expected a index for argument0 (back:index), got " + lua_print_value(argument0));
if !(is_real(argument1) || is_int64(argument1)) return lua_show_error("draw_background_ext: Expected a number for argument1 (x:number), got " + lua_print_value(argument1));
if !(is_real(argument2) || is_int64(argument2)) return lua_show_error("draw_background_ext: Expected a number for argument2 (y:number), got " + lua_print_value(argument2));
if !(is_real(argument3) || is_int64(argument3)) return lua_show_error("draw_background_ext: Expected a number for argument3 (xscale:number), got " + lua_print_value(argument3));
if !(is_real(argument4) || is_int64(argument4)) return lua_show_error("draw_background_ext: Expected a number for argument4 (yscale:number), got " + lua_print_value(argument4));
if !(is_real(argument5) || is_int64(argument5)) return lua_show_error("draw_background_ext: Expected a number for argument5 (rot:number), got " + lua_print_value(argument5));
if !(is_real(argument6) || is_int64(argument6)) return lua_show_error("draw_background_ext: Expected a color for argument6 (:color), got " + lua_print_value(argument6));
if !(is_real(argument7) || is_int64(argument7)) return lua_show_error("draw_background_ext: Expected a number for argument7 (alpha:number), got " + lua_print_value(argument7));
draw_background_ext(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7);
