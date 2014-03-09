package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup;
import base.State;

class GamesState extends State {
	var games : FlxGroup;

	override public function create() : Void {
		games = new FlxGroup();

		games.add(new covers.NaomiCover(150, 400));
		games.add(new covers.PsychoCover(150, 750));
		
		add(new Banner());
		add(new Navbar(300));
		add(games);

		super.create();
	}
}