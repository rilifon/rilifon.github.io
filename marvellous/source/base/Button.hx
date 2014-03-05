package base;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;

class Button extends FlxText {
	private var callback : Button->Void;
	private var min : Int = 20;
	private var mid : Int = 30;
	private var max : Int = 40;

	public function new(x : Float, y : Float, label : String, _callback : Button->Void) {
		super(x, y, FlxG.width, label, max);

		width = textField.textWidth+textField.textWidth/label.length;
		alignment = "center";
		size = min;
		color = Reg.text_color;

		callback = _callback;
	}

	inline public function contains(px : Float, py : Float)
		return px>x && px<x+width && py>y && py<y+height;

	override public function update() : Void {
		super.update();

		if(contains(FlxG.mouse.screenX, FlxG.mouse.screenY)) {
			size = mid;
			if(FlxG.mouse.pressed) {
				size = max;
				bold = true;
			} else {
				size = mid;
				bold = false;
			}

			if(FlxG.mouse.justReleased)
				callback(this);
		} else 
			size = min;
	}

	override public function draw() : Void {
		super.draw();
	}
}