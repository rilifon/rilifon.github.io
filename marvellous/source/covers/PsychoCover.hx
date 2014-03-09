package covers;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.tweens.FlxTween;
import base.Cover;
import base.TextDatabase;

private class Ball extends FlxSprite {
	private var path : FlxTween;
	private var palette : FlxTween;

	public function new(x : Float, y : Float) {
		super(x, y);

		loadGraphic("assets/images/covers/psycho/ball.png", false);

		color = 0xff941841;

		path = FlxTween.linearMotion(this, x, y, x+250, y, 100, false, {type: FlxTween.PINGPONG});
		palette = FlxTween.color(this, 4, color, 0xff097a34, 1, 1, {type: FlxTween.PINGPONG});

		path.active = palette.active = false;
	}

	public function set(state : Bool) : Void {
		path.active = state;
		palette.active = state;
	}
}

class PsychoCover extends Cover {
	private var ball : Ball;
	private var background : FlxSprite;
	private var palette : FlxTween;

	public function new(x : Float, y : Float) {
		super(x, y, "assets/images/covers/psycho/psycho.png", "PsychoState", TextDatabase.getValue("games.psycho"));

		background = new FlxSprite(x, y);

		background.makeGraphic(Std.int(width), Std.int(height), 0xff803e04);

		palette = FlxTween.color(background, 6, color, 0xff1aa1c7, 1, 1, {type: FlxTween.PINGPONG});
		palette.active = false;

		ball = new Ball(x + 25, y+150);
	}

	override public function update() : Void {
		super.update();
		ball.update();
		background.update();
	}

	override public function draw() : Void {
		background.draw();
		super.draw();
		ball.draw();
	}

	override private function set_animated(state : Bool) : Bool {
		palette.active = state;
		ball.set(state);

		return super.set_animated(state);
	}
}