package;

import flixel.FlxSprite;
import flixel.FlxG;

class Banner extends FlxSprite {
	private var dialog : FlxSprite;
	private var state : Bool;

	public function new() {
		super(0, 0);

		loadGraphic("assets/images/banner.png", false);
		x = (FlxG.width-width)/2;

		dialog = new FlxSprite(0, 0);
		dialog.loadGraphic("assets/images/dialog.png", false);
		dialog.x = x-dialog.width;
	}

	inline public function contains(px : Float, py : Float) : Bool
		return px>x && px<x+250 && py>y && py<y+height;

	override public function update() : Void {
		super.update();
	
		state = contains(FlxG.mouse.screenX, FlxG.mouse.screenY);
		if(state)
			dialog.update();
	}

	override public function draw() : Void {
		super.draw();

		if(state)
			dialog.draw();
	}
}