/// @param text_id
function scr_game_text(_text_id){
	
switch(_text_id){
	
	/*  -------------HOW TO ADD TEXT-------------
	//add comment here to help identify where this text can be found in-game (e.g. "before boss door" or "room 1 exit")
	case "keyword or id (create here first, reference in trigger object's creation code after)":
		scr_text("add your text here (this counts as one page.)", "character (optional, default is none)", 1/-1 (1 is default, facing right, -1 is facing left), "name here")
		break; //(ends the textbox)
	*/
	
	case "trigger 1":
		scr_text("Hey Venator, it smells like updog in here.", "buddy", -1)
			scr_text_color(28, 33, c_yellow, c_yellow, c_yellow, c_yellow); scr_text_float(28, 33);
		scr_text("What is updog???", "player")
			scr_text_color(7, 12, c_red,c_red,c_red,c_red); scr_text_shake(7, 12);
		scr_text("Nothin' much what's up with you???", "buddygrin", -1)
		scr_text(". . . . . .", "playerdespair")
			scr_text_shake(0, 11);
		scr_text("I hate you.", "playerdespair")
		break;
	
	
	
	case "trigger 2":
		scr_text("A dead Venator. Torn to shreds.", "buddy")
		scr_text("Something wicked this way comes.","buddy")
		scr_text("A Carnifex. One of your own, consumed by the Black Mold. He is naught but a corpse now.", "buddy")
			scr_text_color(2, 9, c_red,c_red,c_red,c_red)
		scr_text("Show what remains no mercy...", "buddygrin")
		break;
	
	
	
	case "trigger 3":
		scr_text("this is trigger 3")
		scr_text("this is trigger 3 and it works even with really long text, like really really fucking long text, like holy shit this is so fucking long goddamn.", "buddy")
		scr_text("neat.", "player")
		break;
	
	
	
	}
	
}