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
import base.TextDatabase;

/**
 * A FlxState which can be used for the game's menu.
 */
class IndexState extends State {
	var text : FlxText;

	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void {
		#if !FLX_NO_MOUSE
			FlxG.mouse.visible = true;
		#end

		text = new FlxText(0, 400, 1024, TextDatabase.getValue("home.main"), 20);
		text.color = Reg.text_color;
		text.x = (FlxG.width-text.textField.textWidth)/2;

		add(new Banner());
		add(new Navbar(300));
		add(text);

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