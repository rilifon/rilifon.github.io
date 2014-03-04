package base;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxObject;
import flixel.FlxBasic;
import base.State;

class Scroll extends FlxSprite {
	private var owner : State;
	private var background : FlxSprite;
	public var max_height(get, null) : Float;

	public function new(ref : State) {
		super(FlxG.width-WIDTH, 0);

		owner = ref;
		max_height = FlxG.height;
		scrollFactor.x = scrollFactor.y = 0;

		background = new FlxSprite(0, 0);
		background.makeGraphic(FlxG.width, FlxG.height, Reg.background_color);
		background.scrollFactor.x = scrollFactor.y = 0;

		refresh();

		FlxG.camera.height = Std.int(max_height);
	}

	public function refresh() : Void {
		for(element in owner.iterator())
			if(Std.is(element, flixel.FlxObject)) {
				var obj = cast(element, FlxObject);
				var sum = obj.y + obj.height;
				if(max_height<sum) max_height = sum;
			}

		makeGraphic(WIDTH, Std.int((FlxG.height/max_height)*FlxG.height), 0xff8bc1f7);
	}

	private function contains(px : Float, py : Float) : Bool
		return x<px && px<x+width && y<py && py<y+height;

	override public function update() : Void {
		super.update();
		background.update();

		if(FlxG.mouse.wheel != 0) {
			if(y+FlxG.mouse.wheel<0) return;
			if(y+height+FlxG.mouse.wheel>FlxG.height-FlxG.camera.y) return;

			y += FlxG.mouse.wheel;
			background.y = FlxG.camera.y = y;
		}

		if(y<0) return;
		if(y+height>FlxG.height-FlxG.camera.y) return;
		
		if(FlxG.keys.anyPressed(["DOWN"])) {

			--background.y;
			FlxG.camera.y = ++y;
		} else if(FlxG.keys.anyPressed(["UP"])) {
			++background.y;
			FlxG.camera.y = --y;
		}
	}

	override public function draw() : Void {
		background.draw();
		super.draw();
	}

	private function get_max_height() : Float
		return max_height;

	public static var WIDTH : Int = 20;
}