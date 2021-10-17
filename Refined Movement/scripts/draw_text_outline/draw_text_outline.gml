// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_outline(x,y,text,back_color,text_color){
	
	draw_text_color(x+2,y,text,back_color,back_color,back_color,back_color,1);
	draw_text_color(x-2,y,text,back_color,back_color,back_color,back_color,1);
	draw_text_color(x,y+2,text,back_color,back_color,back_color,back_color,1);
	draw_text_color(x,y-2,text,back_color,back_color,back_color,back_color,1);
	draw_text_color(x,y,text,text_color,text_color,text_color,text_color,1);
	
}