/// @description Insert description here
// You can write your code in this editor
//TitleMeun最多4个选项 达到尽头就跳转
if (Post = 4 ) {
    Post = 0
}
if (Post = - 1) {
    Post = 3
}
if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(global.kUp)) {
    Post--;
	SoundPlay(snd_button)
}
if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(global.kDown) ) {
    Post++;
	SoundPlay(snd_button)
}


if (keyboard_check_pressed(vk_enter) or keyboard_check_pressed(global.kAttack))
{ SoundPlay(snd_button2)
    switch (Post)
    {
        case (0):
		room_goto_next()
            //instance_change(oNewGameMeun, true);
            break;
        case (1):
            //instance_change(oLoadGameMeun, true);
            break;
        case (2):
            instance_change(oOptionMeun, true);
            break;
        case (3):
            game_end();
            break;
    }
}