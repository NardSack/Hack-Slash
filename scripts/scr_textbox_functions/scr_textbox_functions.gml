
function scr_set_defaults_for_text() {
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	txtb_spr[page_number] = spr_textbox; //default text box sprite
	speaker_sprite[page_number] = noone; //default no character
	speaker_side[page_number] = 1; //default character on left side if there is one
	snd[page_number] = snd_player_mid;
}

/// @param text
/// @param [portrait]
/// @param [side]
function scr_text(_text){

scr_set_defaults_for_text();

text[page_number] = _text;

//get character info
if argument_count > 1
	switch(argument[1])
	{
		
		case "player":
			speaker_sprite[page_number] = spr_player_spk;
			txtb_spr[page_number] = spr_textbox;
			snd[page_number] = snd_player_mid;
			break;
			
		case "playerdespair":
			speaker_sprite[page_number] = spr_player_spk_despair;
			txtb_spr[page_number] = spr_textbox;
			snd[page_number] = snd_player_low;
			break;
			
		case "buddy":
			speaker_sprite[page_number] = spr_buddy_spk;
			txtb_spr[page_number] = spr_textbox;
			snd[page_number] = snd_buddy;
			break;
			
		case "buddygrin":
			speaker_sprite[page_number] = spr_buddy_spk_grin;
			txtb_spr[page_number] = spr_textbox;
			snd[page_number] = snd_buddy;
			break;
		
	}
if argument_count > 2
	{
		speaker_side[page_number] = argument[2];
	}



page_number++;

}




/// @param text_id
function create_textbox(_text_id) {

	with (instance_create_depth(0,0, -9999, obj_textbox))
			{
				scr_game_text(_text_id);
			}

}