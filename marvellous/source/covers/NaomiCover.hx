package covers;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxTypedGroup;
import flixel.tweens.FlxTween;
import base.Cover;
import base.Timer;
import base.TextDatabase;

private class Star extends FlxSprite {
	private var fader : FlxTween;

	public function new(x : Float, y : Float) {
		super(x, y);

		loadGraphic("assets/images/covers/naomi/star.png", false);
		
		fader = FlxTween.color(this, 1+Std.random(4), this.color, this.color, 0, 1, {type: FlxTween.PINGPONG});
		fader.active = false;
	}

	public function set(state : Bool) : Void
		fader.active = state;
}

class NaomiCover extends Cover {
	private var stars : FlxTypedGroup<Star>;

	public function new(x : Float, y : Float) {
		super(x, y, "assets/images/covers/naomi/naomi.png", "NaomiState", TextDatabase.getValue("games.naomi"));

		stars = new FlxTypedGroup<Star>();

		stars.add(new Star(x+120, y+145));
		stars.add(new Star(x+215, y+130));
		stars.add(new Star(x+315, y+95));
		stars.add(new Star(x+160, y+100));
		stars.add(new Star(x+20, y+85));
	}

	override public function update() : Void {
		super.update();

		for(it in stars.iterator())
			it.update();
	}

	override public function draw() : Void {
		super.draw();

		for(it in stars.iterator())
			it.draw();
	}

	override private function set_animated(state : Bool) : Bool {
		for(it in stars.iterator())
			it.set(state);

		return super.set_animated(state);
	}
}