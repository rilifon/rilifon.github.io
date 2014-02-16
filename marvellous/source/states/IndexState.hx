package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;
import flixel.group.FlxGroup;
import base.Timer;
import base.State;
import base.Button;

/**
 * A FlxState which can be used for the game's menu.
 */
class IndexState extends State {
	var banner : Banner;
	var games : FlxGroup;
	var buttons : FlxGroup;
	var navbar : Navbar;

	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void {
		FlxG.cameras.bgColor = 0xff1a148e;

		#if !FLX_NO_MOUSE
			FlxG.mouse.visible = true;
		#end

		banner = new Banner();
		games = new FlxGroup();
		buttons = new FlxGroup();
		navbar = new Navbar(300);


		var element : Button;

		games.add(new covers.NaomiCover(50, 450));
		games.add(new covers.PsychoCover(450, 450));

		add(banner);
		add(games);
		add(buttons);
		add(navbar);

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