/*If you use the ENTER key, remove the following line commented out to avoid problems. 
Since GMS uses the ALT + ENTER command to put the game in full screen.*/
//if(keyboard_check_pressed(vk_alt)){exit;}

surface_free(surf_pause); //Clear surface
draw_enable_alphablend(true);
global.pause = false;
instance_activate_all(); //Activate all the objects
instance_destroy();

/* */
/*  */
