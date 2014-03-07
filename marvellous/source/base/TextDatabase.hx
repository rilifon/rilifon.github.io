package base;

import flixel.FlxG;
import haxe.ds.StringMap;

/**
 * TextDatabase
 *
 * Flash is stupid.
 *
*/
class TextDatabase extends StringMap<String> {	
	private function new() {
		super();

		set("home.main", "Hi.");
		set("games.naomi", "\"A true orgasmic experience at every phase.\" 8/10 - Gamespot\n" +
			"\"I cried of joy. 9/10.\" - IGN");
		set("games.psycho", "\"On my first playthrough, little did I know that my fingers would start bleeding right after I completed the game. 10/10.\" - Tim Schafer\n" +
			"\"At first I had my doubts, but now, after all this inspiration... Half-Life 3 confirmed!\" - Gabe Newell right after playing PsyChObALL");
	}

	private static var instance : TextDatabase = null;
	
	public static function getValue(key : String) : String {
		if(instance == null) instance = new TextDatabase();
		return instance.get(key);
	}
}