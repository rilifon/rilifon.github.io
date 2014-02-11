package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.group.FlxGroup;
import base.Timer;
import base.State;

/**
 * A FlxState which can be used for the game's menu.
 */
class IndexState extends State {
	var banner : FlxText;
	var games : FlxGroup;

	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void {
		FlxG.cameras.bgColor = 0xff1a148e;

		#if !FLX_NO_MOUSE
			FlxG.mouse.visible = true;
		#end

		banner = new FlxText(50, 50, FlxG.width-50, "How Marvellous!", 20);
		games = new FlxGroup();

		games.add(new covers.NaomiCover(50, 150));
		games.add(new covers.PsychoCover(450, 150));

		add(banner);
		add(games);

		super.create();
	}
	
	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void {
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void {
		super.update();
	}	
}