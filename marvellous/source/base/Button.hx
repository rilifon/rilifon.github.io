package base;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;

class Button extends FlxText {
	var callback : Button->Void;

	public function new(x : Float, y : Float, label : String, _callback : Button->Void) {
		super(x, y, FlxG.width, label, 30);

		width = textField.textWidth+textField.textWidth/label.length;
		alignment = "center";
		size = 20;

		callback = _callback;
	}

	inline public function contains(px : Float, py : Float)
		return px>x && px<x+width && py>y && py<y+height;

	override public function update() : Void {
		super.update();

		if(contains(FlxG.mouse.screenX, FlxG.mouse.screenY)) {
			size = 25;
			if(FlxG.mouse.pressed) {
				size = 30;
				bold = true;
			} else {
				size = 25;
				bold = false;
			}

			if(FlxG.mouse.justPressed)
				callback(this);
		} else 
			size = 20;
	}

	override public function draw() : Void {
		super.draw();
	}
}