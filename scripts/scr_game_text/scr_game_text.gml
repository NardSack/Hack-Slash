/// @param text_id
function scr_game_text(_text_id){
	
switch(_text_id){
	
	/*  -------------HOW TO ADD TEXT-------------
	//add comment here to help identify where this text can be found in-game (e.g. "before boss door" or "room 1 exit")
	case "keyword id (create here first, reference in trigger object's creation code after)":
		scr_text("add your text here (this counts as one page.)", "character (optional, default is none)", 1/-1 (1 is default, facing right, -1 is facing left), "speaker here")
		break; //(ends the textbox)
	*/
	
	case "opening":
		scr_text("Press [F] to read.")
		scr_text("\"In an age long forgotten, when empires crumbled and gods fell, the realm of Man was plunged into an abyss of despair.\"");
		scr_text("\"The boundaries between worlds grew thin, and the line between life and death blurred.\"");
		scr_text("\"Foul creatures emerged from the void, feasting upon the souls of the living.\"");
		scr_text("\"Amidst the chaos, an unknown warrior of no renown emerges, drawn by fate's cruel hand.\"");
		scr_text("\"The fate of the world hangs in the balance, and the shadows of desolation loom ever larger.\"");
		scr_text("\"Prepare yourself, Venator, for the hunt awaits.\"");
		scr_text("\"May this nightmare end.\"");
		scr_text("..........")
		scr_text("..........")
		scr_text("Even near death, you still wish to fight?", "buddyunknown",-1)
		scr_text("Your tenacity is impressive.", "buddyunknown",-1)
		scr_text("Very well.", "buddyunknown",-1)
		scr_text("You shall lend me your blade, and I shall provide you strength.", "buddyunknown",-1)
		scr_text("Strength to hunt.", "buddyunknown",-1)
		scr_text("Wake up.", "buddyunknown",-1)
		scr_text("I know you can hear me, wake up.", "buddyunknown",-1)
	break;
	
	case "wake up":
		scr_text("Wake up.", "buddyunknown",-1)
		scr_text("We must make haste.", "buddyunknown",-1)
		scr_text("(A voice... in my head...?)", "player")
		scr_text("Be not afraid.", "buddyunknown",-1)
		scr_text("I mean you no harm, but we must make haste.", "buddyunknown",-1)
		scr_text("Come now, stand up.", "buddyunknown",-1)
		scr_text("You are a Venator, and so, you will hunt.", "buddyunknown",-1)
			scr_text_color(9, 18, c_lime,c_lime,c_lime,c_lime);
		scr_text("You will hunt, until there is nothing left.", "buddyunknown",-1)
		scr_text("Press [W] [A] [S] [D] to move.")
	break;
	
	case "buddymoment":
		scr_text("Who are you?", "player");
		scr_text("My name is Malfy, and I have saved you.", "buddy");
		scr_text_color(11, 17, c_lime,c_lime,c_lime,c_lime);
		scr_text("Now, Shhhh... Be very careful...","buddy");
		scr_text("I sense an ominous presence up ahead.","buddy");
		scr_text("Something wicked this way comes.", "buddygrin");
	break;
	
	case "breakdummy":
		scr_text("You see a training dummy up ahead.")
		scr_text("Its patronizing face mocks me, destroy it, Venator.", "buddy")
		scr_text_color(31, 37, c_red,c_red,c_red,c_red); scr_text_shake(31, 37);
		scr_text("( . . . Seriously?)", "playerdespair")
		scr_text("Press [LSHIFT] to attack with your sword.")
		scr_text("Aim with your [MOUSE].")
		scr_text("Press [LMB] to shoot.")
		scr_text("Press [1] [2] [3] to switch weapons.")
		scr_text("[1] is your Revolver.")
			scr_text_color(12, 22, c_orange,c_orange,c_orange,c_orange);
		scr_text("[2] is your Shotgun.")
			scr_text_color(12, 37, c_lime,c_lime,c_lime,c_lime);
		scr_text("[3] is your Railgun.")
			scr_text_color(12, 37, c_aqua,c_aqua,c_aqua,c_aqua);
		scr_text("Use them well.")
		break;
		
	case "dummyinspect" :
		scr_text("A regular training dummy.")
		scr_text("He's right, it's face IS patronizing.")
	break;	
	
	case "buddywarn" :
		scr_text("Enemies up ahead.", "buddy")
		scr_text("For real this time.", "buddy")
		scr_text("Lucents. Cowardly by nature, those disgusting aberrations of Black Mold and light should not exist.", "buddy")
			scr_text_color(0, 8, c_red,c_red,c_red,c_red); scr_text_color(60, 70, c_red,c_red,c_red,c_red); scr_text_shake(60, 70);
		scr_text("Eradicate them.", "buddygrin")
			scr_text_color(0, 16, c_red,c_red,c_red,c_red); scr_text_shake(0, 16);
		scr_text("Got it.", "player")
		scr_text("Press [SPACEBAR] to dash.")
		scr_text("You can still get hit during a dash.")
		scr_text("Pressing [LSHIFT] at the right time allows you to parry enemy projectiles.")
		scr_text_color(50, 55, c_yellow,c_yellow,c_yellow,c_yellow); scr_text_float(50, 55);
	break;	
	
	case "buddywelldone":
		scr_text("Well done.", "buddy")
		scr_text("Maybe you'll live, after all.", "buddy")	
		scr_text("(What was that supposed to mean?)", "playerdespair")	
	break;
	
	case "smallfry":
		scr_text("Small fry incoming.", "buddy")
		scr_text("Runts. Weaklings made manifest by the the will of the Black Mold. Worthy targets of your blade nonetheless.", "buddy")	
		scr_text_color(0, 6, c_red,c_red,c_red,c_red); scr_text_color(53, 64, c_red,c_red,c_red,c_red); scr_text_shake(53, 64);
		scr_text("Cleave through them, and feel no remorse.", "buddygrin")
		scr_text_color(0, 40, c_red,c_red,c_red,c_red); scr_text_shake(0, 40);
	break;
	
	case "blackmold":
		scr_text("What is this \"Black Mold\" stuff anyway?", "player")
			scr_text_color(13, 25, c_red,c_red,c_red,c_red); scr_text_shake(13, 25);
		scr_text("A hivemind of unknown origin, that seeks to consume the world itself.", "buddy")	
		scr_text("If it's a hivemind, doesn't that mean that it knows we're coming now?", "player")
		scr_text("No. These creatures are mere Husks that mindlessly carry out tasks for the Greater Minds.", "buddy")	
		scr_text("It's a one-way transfer of thoughts, from Greater Minds to these Lesser Husks.", "buddy")	
		scr_text("We'll be fine.", "buddygrin")	
	break;
	
	case "statueinspect":
		scr_text("A Statue of the Goddess.")
		scr_text("It's strange, how there's so many of these out here in this forest.", "player")	
		scr_text("Could we use these somehow?", "player")
		scr_text("No. Are you stupid?", "buddy")	
		scr_text("What could you possibly do with a statue?", "buddy")
		scr_text("Fool.", "buddy")
		scr_text("You didn't have to put it that bluntly...", "playerdespair")	
	break;
	
	case "whatwerethose":
		scr_text("Some of those Runts were a little tougher than the rest.","player")
			scr_text_color(14, 19, c_red,c_red,c_red,c_red);
		scr_text("Those were Teneri. Slightly older and more resilient versions of Runts.", "buddy")
			scr_text_color(11, 18, c_red,c_red,c_red,c_red); scr_text_color(65, 70, c_red,c_red,c_red,c_red);
		scr_text("You put them down wonderfully nonetheless.", "buddygrin")
	break;
	
	case "where":
		scr_text("Where are we, anyway? All I remember is waking up on a stone platform.","player")
		scr_text("We are in The Garden of Sinners...", "buddygrin")
		scr_text(". . . . . .", "player")
		scr_text("Why-", "player")
		scr_text("Silence, fool. The enemy awaits us.", "buddy")
		scr_text("......Here we go again.", "playerdespair")
	break;
	
	case "thosehealth":
		scr_text("Those Healing Vials were really useful.","player")
		scr_text("Ration them well, drink them only when necessary.", "buddy")
	break;
	
	case "why":
		scr_text("(Why can't I remember anything?)","player")
		scr_text("I have taken your memories, for you have no need to remember.", "buddy")
		scr_text("You now exist as my blade.", "buddy")
		scr_text("A blade exists to cut.", "buddy")
		scr_text("A blade asks no questions.", "buddy")
		scr_text("A blade will cut what it must.", "buddy")
		scr_text("And my blade will serve it's purpose.", "buddy")
	break;


	case "heyven":
		scr_text("Hey Venator, it smells like updog in here.", "buddy", -1)
			scr_text_color(28, 33, c_yellow, c_yellow, c_yellow, c_yellow); scr_text_float(28, 33);
		scr_text("What is updog???", "player")
			scr_text_color(7, 12, c_red,c_red,c_red,c_red); scr_text_shake(7, 12);
		scr_text("Nothin' much what's up with you???", "buddygrin", -1)
		scr_text(". . . . . .", "playerdespair")
			scr_text_shake(0, 11);
		scr_text("I hate you.", "playerdespair")
		break;
	
	case "end9":
		scr_text("So that was why you wanted me to ration them.","player")
		scr_text("It's a good habit to keep.", "buddy")
	break;
	
	case "end10":
		scr_text("I can't believe you actually survived that.","buddy")
		scr_text("I was right to choose you, to lend you my strength.", "buddy")
	break;
	
	case "start11":
		scr_text("A room filled with those DETESTABLE dummies.", "buddy")
		scr_text("Leave NOTHING standing.", "buddygrin")
		scr_text("Let's... see... you... try...", "carnifexunknown", -1)
		scr_text_shake(0, 100);
	break;
	
	case "deadven":
		scr_text("A dead Venator. Torn to shreds.", "buddy")
			scr_text_color(7,15, c_lime, c_lime, c_lime, c_lime)
		scr_text("True horror lies ahead...","buddy")
		scr_text("A Carnifex. One of your own, consumed by the Black Mold. He is naught but a corpse now.", "buddy")
			scr_text_color(2, 10, c_red,c_red,c_red,c_red); scr_text_shake(2, 10);
		scr_text("Show what remains no mercy...", "buddygrin")
			scr_text_shake(0,30);
		break;
	
	case "start13":
		scr_text("You...fool to come...", "carnifex", -1)
			scr_text_shake(0, 100);
		scr_text("Nothing... but death... awaits you...", "carnifex", -1)
			scr_text_shake(0, 100);
		scr_text("Big talk, for a walking corpse.", "player")
	break;
	
	case "end13":
		scr_text("You...traitor......", "carnifex", -1)
			scr_text_shake(0, 100);
		scr_text("Nicely done.", "buddy")
		scr_text("Come now, once more unto the breach.", "buddy")
	break;
	
	case "closing":
		scr_text("=ACT I COMPLETE=")
		scr_text("TO BE CONTINUED...")
		break;
	
	
	
	}
}