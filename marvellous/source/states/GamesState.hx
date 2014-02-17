package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup;
import base.State;

class GamesState extends State {
	var games : FlxGroup;

	override public function create() : Void {
		games = new FlxGroup();

		games.add(new covers.NaomiCover(50, 450));
		games.add(new covers.PsychoCover(450, 450));
		
		add(new Banner());
		add(new Navbar(300));
		add(games);

		super.create();
	}
}