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

		set("home.main", "Hi!\n\n\n" +
			"Marvellous Games creates the most beautiful, thought provoking, excruciatingly philosophical, questionably sain " +
			"games that you will ever play, love and cherish forever in that special and troubled place called the heart.\n\n" + 
			"We aim to be the best.\nNot just the best at game development, but also the best at creating unforgettable memories.\n\n" +
			"We aim to be supportive.\nWe listen to our fans. Game content and ideas are always welcome here. Thought of the perfect " + 
			"Apple Juice Maker Simulator? We'll support your idea and start on creating that delicious fruit that we all love.\n\n" + 
			"We aim to be creative.\nOur clockworking minds are always oozing the fluids of love and ideas. But be sure that " + 
			"your fluids are also welcome in our games! We respect your input.\n\n" +
			"Want to know more about us? Tell us how handsome we are? How every game of ours made you feel the feels inside? " +
			"How marvellously happy you are that we are doing what we're doing? How insane we look and act? How much you love " + 
			"us and that you want to have our babies? Then you'll have to contact us by searching our names on the internets. Because " +
			"sadly we do not have an email yet. :(((");
		set("games.naomi", "\"A true orgasmic experience at every phase. 8/10.\"\n - Gamespot\n\n" +
			"\"I cried of joy. 9/10.\"\n - IGN");
		set("games.psycho", "\"On my first playthrough, little did I know that my fingers would start bleeding right after I completed the game. " +
			"The story was compelling and made me cry in the end... I don't cry easily. 10/10.\"\n - Tim Schafer\n" +
			"\n\n\"At first I had my doubts, but now, after all this inspiration... Half-Life 3 confirmed!\"\n - Gabe Newell right after playing PsyChObALL");
	}

	private static var instance : TextDatabase = null;
	
	public static function getValue(key : String) : String {
		if(instance == null) instance = new TextDatabase();
		return instance.get(key);
	}
}