accept_key = keyboard_check_pressed(ord("F"));

textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 288;

//setup
if setup == false
	{
		setup = true;
		draw_set_font(global.font_main);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
	
		//loop through the pages
		for (var p = 0; p < page_number; p++)
			{
				//find how many characters are on each page and store that number in the "text_length" array
				text_length[p] = string_length(text[p]);
				
				//x position for the background box
				background_x_offset[p] = 48;
				
				//get the x position for the textbox
					//character on left
					text_x_offset[p] = 224;
					portrait_x_offset[p] = 64;
					
					//character on right
					if speaker_side[p] == -1
						{
							text_x_offset[p] = 64;	
							portrait_x_offset[p] = 640;
						}
					//no character (center the textbox)
					if speaker_sprite[p] == noone { text_x_offset[p] = 152 };
					
					
				//setting individual characters and finding where lines of text should break
				for (var c = 0; c < text_length[p]; c++)
					{
						
						var _char_pos = c+1;
						
						//store individual characters into the "char" array
						char[c,p] = string_char_at(text[p], _char_pos);
						
						//get current width of line
						var _txt_up_to_char = string_copy( text[p], 1, _char_pos);
						var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c, p]);
						
						//get the last free space
						if char[c, p] == " " { last_free_space = _char_pos+1 };
						
						//get the line breaks 
						if _current_txt_w - line_break_offset[p] > line_width
							{
								line_break_pos[line_break_num[p], p] = last_free_space;
								line_break_num[p]++;
								var _txt_up_to_last_space = string_copy(text[p], 1, last_free_space);
								var _last_free_space_string = string_char_at(text[p], last_free_space);
								line_break_offset[p] = string_width(_txt_up_to_last_space) - string_width(_last_free_space_string);
							}
						
					}	
				
				//getting each character's coordinates
				for (var c = 0; c < text_length[p]; c++)
					{
						
						var _char_pos=c+1;
						var _txt_x = textbox_x + text_x_offset[p] + border;
						var _txt_y = textbox_y + border/2; //change past textbox_y to change dist between top of textbox and text
						//get current width of line
						var _txt_up_to_char = string_copy( text[p], 1, _char_pos);
						var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c, p]);
						var _txt_line = 0;
						
						//compensate for string breaks
						for (var lb = 0; lb < line_break_num[p]; lb++)
							{
								//if the current looping char is after a line break
								if _char_pos >= line_break_pos[lb, p]
									{
										var _str_copy = string_copy(text[p], line_break_pos[lb, p], _char_pos-line_break_pos[lb, p]);
										_current_txt_w = string_width( _str_copy );
										
										//record the "line" this character should be on
										_txt_line = lb+1; //+1 since lb starts at 0
									}
							}
						
						//add to the x and y coordinates based on the new info
						char_x[c,p] = _txt_x + _current_txt_w;
						char_y[c,p] = _txt_y + _txt_line*line_sep;
					}
			}
	}
	
//typing the text
if text_pause_timer <= 0 {
	if draw_char < text_length[page]
		{
			draw_char+=text_spd;
			draw_char = clamp(draw_char, 0, text_length[page]);
			var _check_char = string_char_at(text[page], draw_char);
			if _check_char == "." || _check_char == "!" || _check_char == "?" || _check_char == ";" || _check_char == ","
				{
					text_pause_timer = text_pause_time;
					if !audio_is_playing(snd[page])
						{
							audio_play_sound(snd[page], 8, false);
						}
				}
			else
				{
					if snd_count < snd_delay 
						{
							snd_count++;
						}
					else
						{
							snd_count = 0;
							audio_play_sound(snd[page], 8, false);
						}
				}
		}
}
else
{
	text_pause_timer--;
}
//-----------------------flip through pages-----------------------//
if accept_key
	{
		//if typing is done
		if draw_char == text_length[page]
			{
				//next page
				if page < page_number-1
					{
						page++;
						draw_char=0;
					}
				//destroy textbox after all pages done
				else
					{
						instance_destroy();
					}
			}
		//if not done typing, fill out the page instantly
		else
			{
				draw_char = text_length[page];
			}
	}

//-----------------------draw the textbox-----------------------//
var _txtb_x = textbox_x + text_x_offset[page];
var _txtb_y	= textbox_y;
var _bg_x = textbox_x + background_x_offset[page];
var _bg_y = textbox_y-16;
txtb_img += txtb_img_spd;
txtb_spr_w = sprite_get_width(txtb_spr[page]);
txtb_spr_h = sprite_get_height(txtb_spr[page]);

//draw the background box
draw_sprite_ext(txtb_spr[page], txtb_img, _bg_x, _bg_y, backbox_width/txtb_spr_w, backbox_height/txtb_spr_h, 0, c_white, 1);

//draw the speaker
if speaker_sprite[page] != noone
	{
		sprite_index = speaker_sprite[page];
		if draw_char ==text_length[page] {image_index = 0};
		var _speaker_x = textbox_x + portrait_x_offset[page];
		if speaker_side[page] == -1 { _speaker_x += sprite_width };
		//draw the speaker
		draw_sprite_ext(txtb_spr[page], txtb_img, textbox_x + portrait_x_offset[page], textbox_y, sprite_width/txtb_spr_w, sprite_height/txtb_spr_h, 0, c_white, 1);
		draw_sprite_ext(sprite_index, image_index, _speaker_x, textbox_y, speaker_side[page], 1, 0, c_white, 1);
		draw_text(textbox_x + portrait_x_offset[page],textbox_y + name_offset, name[page]);
		//draw the name (Cont. here)
	}
//back of the textbox
draw_sprite_ext(txtb_spr[page], txtb_img, _txtb_x, _txtb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0, c_white, 1);

//draw the text
for (var c = 0; c < draw_char; c++)
	{
		
		//-------------special fx-------------//
		//float text
		var _float_y = 0;
		var _float_mult = 1;
		if float_text[c, page] == true
			{
				float_dir[c, page] -= 6;
				_float_y = dsin( float_dir[c,page] * _float_mult);
			}
			
		//shake text	
		var _shake_x = 0;
		var _shake_y = 0;
		var _shake_mult = 0.8;
		if shake_text[c, page] == true
			{
				shake_timer[c, page]--;
				if shake_timer[c, page] <= 0
					{
						shake_timer[c, page] = irandom_range(4,6);
						shake_dir[c, page] = irandom(360);
					}
						_shake_x = lengthdir_x(_shake_mult, shake_dir[c, page]);
						_shake_y = lengthdir_y(_shake_mult, shake_dir[c, page]);		
			}
		
		//the text
		draw_text_color(char_x[c, page] + _shake_x, char_y[c, page] + _float_y + _shake_y, char[c, page], col_1[c,page], col_2[c,page], col_3[c,page], col_4[c,page], 1);
		
	}
	
