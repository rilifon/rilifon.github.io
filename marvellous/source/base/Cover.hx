package base;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;

class Cover extends FlxSprite {
	private var state : String;
	private var text : FlxText;
	public var animated(default, set) : Bool;

	public function new(x : Float, y : Float, background : String, _state : String, _text : String) {
		super(x, y);
		
		loadGraphic(background, false);
		state = _state;

		text = new FlxText(x + width + 100, y, 1250, _text, 18);
		text.color = Reg.text_color;
	}

	inline public function contains(px : Float, py : Float)
		return px>x && px<x+width && py>y && py<y+height;

	override public function update() : Void {
		super.update();
		text.update();

		if(contains(FlxG.mouse.screenX, FlxG.mouse.screenY)) {
			if(FlxG.mouse.justPressed)
				FlxG.switchState(Type.createInstance(Type.resolveClass(state), []));
			if(!animated)
				animated = true;
		} else if(animated) animated = false;
	}

	override public function draw() : Void {
		super.draw();
		text.draw();
	}

	private function set_animated(state : Bool) : Bool
		return (animated = state);
}