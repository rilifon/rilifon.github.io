package base;

import flixel.FlxG;
import flixel.text.FlxText;
import base.Button;

class URL extends Button {
	public static var base_color : Int = 0xff03284d;
	public static var hover_color : Int = 0xff3c75ad;

	public function new(x : Float, y : Float, url : String, ?text : String, target="_blank" : String, _size=20 : Int) {
		super(x, y, text==null?url:text, 
			function(self : Button) : Void {
				FlxG.openURL(url, target);
			});

		color = base_color;
		size = mid = max = _size;
		min = _size-5;
	}

	override public function update() : Void {
		super.update();

		if(contains(FlxG.mouse.screenX, FlxG.mouse.screenY)) {
			color = if(color==base_color) hover_color else base_color;
			if(FlxG.mouse.justPressed)
				size = min;
		}

		if(FlxG.mouse.justReleased)
			size = mid;
	}
}