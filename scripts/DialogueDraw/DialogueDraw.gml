
draw_text(24,75,string_hash_to_newline(global.name));
draw_text(24,95,string_hash_to_newline(string_copy(global.huanchun,1,min(global.jishu,20))))
if(global.jishu>20) draw_text(24,110,string_hash_to_newline(string_copy(global.huanchun,20,min(global.jishu-20,20))))
if(global.jishu>40) draw_text(24,125,string_hash_to_newline(string_copy(global.huanchun,40,min(global.jishu-40,20))))