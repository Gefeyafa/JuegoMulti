function scr_game_text(_text_id)
{
	//Primera escena
	if(room == Room1)
	{
		switch(_text_id)
		{
			//---------------------------------------------------Link-----------------------------------------------------

			case "link":
			scr_text("Sabias que puedes moverte con W,A,S,D?", "Link");
				scr_option("Si", "link - yes");
				scr_option("No", "link - no")
				break;
					
					
				case "link - yes":
				scr_text("Obviamente, que crees? que llevo toda la vida sin moverme o que?");
				scr_text("Soy tu superior...","Link");
				scr_text("Tel hocico");
				break;
			
			
				case "link - no":
				scr_text("Ah, no sabia");
				scr_text("Pues ya lo sabes...","Link");
				scr_text("Asi que zumbele soldado","Link");
				scr_text("ok... u.u");
				break;
		
		
		
			//---------------------------------------------------Mario-----------------------------------------------------
			case "mario":
			scr_text("Creo que es obvio, pero no dejes que te alcancen las balas enemigas o la palmas", "Mario");
			break;

			//---------------------------------------------------Kirby-----------------------------------------------------
			case "kirby":
			scr_text("Ves esa arma que esta en el suelo?", "Kirby");
			scr_text("Siempre intenta tomarla, es la unica forma de poder enfrentar a los enemigos", "Kirby");
			scr_text("Despues de tomarla, intenta disparar con click izquierdo", "Kirby");
			scr_text("Pulsa G si la quieres soltar", "Kirby");
			break;
			//---------------------------------------------------Megaman-----------------------------------------------------
			case "megaman":
			scr_text("Cuando estes listo haz click en la flecha que tienes en la parte inferior derecha", "Megaman");
			scr_text("para pasar a la siguiente mision", "Megaman");
			break;
		}
	}
	//Segunda escena
	if(room == LevelTest)
	{
		switch(_text_id)
		{
			//---------------------------------------------------Link-----------------------------------------------------

			case "link":
			scr_text("Segunda escena pai", "Link");
			break;
		
			//---------------------------------------------------Mario-----------------------------------------------------
			case "mario":
			scr_text("Segunda escena pai", "Mario");
			break;

			//---------------------------------------------------Kirby-----------------------------------------------------
			case "kirby":
			scr_text("Segunda escena pai", "Kirby");
			break;
			//---------------------------------------------------Megaman-----------------------------------------------------
			case "megaman":
			scr_text("Segunda escena pai", "Megaman");
			break;
		}
	}
}