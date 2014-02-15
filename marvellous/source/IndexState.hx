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
import base.Button;

/**
 * A FlxState which can be used for the game's menu.
 */
class IndexState extends State {
	var banner : FlxText;
	var games : FlxGroup;
	var buttons : FlxGroup;

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
		buttons = new FlxGroup();

		var element : Button;

		buttons.add(element = new Button(50, 250, "Home", function(self : Button) {trace("Home is where the heart is. And so are cookies.");}));
		buttons.add(element = new Button(element.width+element.x+50, 250, "Games", function(self : Button) {trace("Games give you brain damage. I speak from experience.");}));
		buttons.add(element = new Button(element.width+element.x+50, 250, "Team", function(self : Button) {trace("The A-Team is here! 'A' stands for Arnie-Schwaznegger-1st-Fan-Club.");}));

		games.add(new covers.NaomiCover(50, 350));
		games.add(new covers.PsychoCover(450, 350));

		add(banner);
		add(games);
		add(buttons);

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