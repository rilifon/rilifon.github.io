package base;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;

class Cover extends FlxSprite {
	private var state : String;
	public var animated(default, set) : Bool;

	public function new(x : Float, y : Float, background : String, _state : String) {
		super(x, y);
		
		loadGraphic(background, false);
		state = _state;
	}

	inline public function contains(px : Float, py : Float)
		return px>x && px<x+width && py>y && py<y+height;

	override public function update() : Void
		if(contains(FlxG.mouse.screenX, FlxG.mouse.screenY)) {
			if(FlxG.mouse.justPressed)
				FlxG.switchState(Type.createInstance(Type.resolveClass(state), []));
			if(!animated)
				animated = true;
		} else if(animated) animated = false;

	private function set_animated(state : Bool) : Bool
		return (animated = state);
}