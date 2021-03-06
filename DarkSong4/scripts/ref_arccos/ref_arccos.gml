/// @description  arccos(x:number)
/// @function  arccos
/// @param x:number
if (argument_count != 1) return lua_show_error("arccos: Expected 1 argument, got " + string(argument_count));
if !(is_real(argument0) || is_int64(argument0)) return lua_show_error("arccos: Expected a number for argument0 (x:number), got " + lua_print_value(argument0));
return arccos(argument0);

