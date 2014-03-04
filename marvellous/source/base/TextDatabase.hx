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

		set("home.main", "Has the world gone insane?! What does a man have to do to get some fried carrots around here?\n\n"
			+ "Last night I had a dream. I dreamt I would meet the end of times at my prime time.\n"
			+ "I told many of this. People thought I had gone insane. Mad. Irrational. Fearful.\n"
			+ "But to their dismay, I was right. For I did meet the end of an era. The end of "
			+ "times as we know it. For the prophecy prayed:\n\n"
			+ "\"At your finest hour\n" 
			+ "The prime of your time\n"
			+ "You shall meet the end of power\n"
			+ "The end of days of fine.\"\n\n"
			+ "And it was at primetime, that the end came.\n"
			+ "For Walter White retired his mane. And fell gloriously to the arms of death.\n\n"
			+ "And also my cookie jar fell and chocolate chips spread all over. I was very upset. Sad face." 
		 	+ "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
	}

	private static var instance : TextDatabase = null;
	
	public static function getValue(key : String) : String {
		if(instance == null) instance = new TextDatabase();
		return instance.get(key);
	}
}