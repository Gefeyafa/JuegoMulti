function scr_game_text(_text_id)
{
	//Primera escena
	if(room == Room1)
	{
		switch(_text_id)
		{
			//---------------------------------------------------Link-----------------------------------------------------

			case "link":
			scr_text("Soy Link, pero no el del Twilight Princess, ese wey esta guapillo... me parezco al de A Link to the Past pero soy el de Spirit Tracks", "Link");
			scr_text("che juego culei... Verdad?", "Link");
				scr_option("La neta", "link - yes");
				scr_option("Nel mi buen", "link - no")
						break;
					
					
				case "link - yes":
				scr_text("La neta, che juego de la ver... ah te creas mi Link, sho te quiero");
				scr_text("Cabashero, es usted una persona muy concatenada dejeme decirle, me gusta... me gusta...","Link-happy");
				scr_text("Gracias gracias, igual mente mi estimado");
				break;
			
			
				case "link - no":
				scr_text("Nel mi buen, tu juego esta... disculpame la palabrota que voy a usar, pero esta muy... ... ... ... ... ... suavicremas");
				scr_text("Che morrillo cromo...","Link");
				scr_text("Zumbele pa alla, jo su mother!","Link");
				scr_text("Pipipipipi u.u");
				break;
		
		
		
			//---------------------------------------------------Mario-----------------------------------------------------
			case "mario":
			scr_text("Soy el Marianisho, ta wuenilla la Peach verdad?", "Mario");
				scr_option("Pos dos tres", "mario - yes");
				scr_option("Nah", "mario - no")
				break;
			
				case "mario - yes":
				scr_text("Pues fijate que dos tres mi Mariano... dos tres");
				scr_text("Tu si le sabes mi pai","Mario");
				scr_text("Tuve mis momentos...");
				scr_text("La neta quiero ser como tu, pero me da miedo no poder llegar a estar tan calilla","Mario");
				scr_text("Mirate nomas... tas bien grueso compadre","Mario");
				scr_text("Bueno... no voy a negar que esa es mi reputacion, pero no es para tanto");
				break;

				case "mario - no":
				scr_text("Esa morra queria comnigo, pero nah...");
				scr_text("Che morro verbo","Mario");
				scr_text("Seguramente eres de los que dice que inviten morras chidas y cuandon van, se te abre","Mario");
				scr_text("No, yo soy bien tremendo con las minitas");
				scr_text("No eres un Sasuke, zumbele che lacroso","Mario");
				scr_text("Pero yo...");
				scr_text("Tel hocico tel hocico","Mario");
				break;

			//---------------------------------------------------Kirby-----------------------------------------------------
			case "kirby":
			scr_text("Soy el Kirbysisho...", "Kirby");
			scr_text("me quiero echar un frajo, traes laira?", "Kirby");
				scr_option("Simon", "kirby - yes");
				scr_option("Nelson", "kirby - no")
				break;
			
				case "kirby - yes":
				scr_text("Simon mi Kirbs, rola un frajo");
				scr_text("Agarralo pai","Kirby");
				scr_text("Gracias gracias...");
				scr_text("*Paso un rato fumandome un frajillo con el Kirby*");
				break;

				case "kirby - no":
				scr_text("Nelson mi Kirby, ahi se me agarras en curva");
				scr_text("Sale pues u.u","Kirby");
				scr_text("*Hay un silencio incomodo, mejor me voy*");
				break;
			//---------------------------------------------------Megaman-----------------------------------------------------
			case "megaman":
			scr_text("Soy el Megaman...", "Megaman");
			scr_text("sisho", "Megaman");
			scr_text("Buenas Megam...");
			scr_text("Weeeeey esa es mi rolaaaaaa!!!!", "Megaman", -1);
			scr_text("*Anda bien entrado el morro, mejor los dejo asi*");
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