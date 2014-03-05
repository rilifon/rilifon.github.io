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
	}

	private static var instance : TextDatabase = null;
	
	public static function getValue(key : String) : String {
		if(instance == null) instance = new TextDatabase();
		return instance.get(key);
	}
}