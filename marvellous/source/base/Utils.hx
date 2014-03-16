package base;

import flixel.FlxSprite;
import flixel.tweens.FlxTween;
import flixel.util.FlxPoint;

class Utils {
	public static function fadeOut(t : FlxSprite, delay : Float, duration : Float, destroyAfter : Bool = false) : FlxSprite {
		var opts = { complete: destroyAfter? function(_) { t.destroy(); } : null, type : FlxTween.ONESHOT };
		if(delay == 0) FlxTween.color(duration, t.color, t.color, 1, 0, opts, t);
		else Timer.callIn(delay, function() { FlxTween.color(duration, t.color, t.color, 1, 0, opts, t); });
		return t; // If you like to chain stuff
	}

	public static function fadeIn(t : FlxSprite, delay : Float, duration : Float) : FlxSprite {
		if(delay == 0) FlxTween.color(duration, t.color, t.color, 0, 1, t);
		else Timer.callIn(delay, function() { FlxTween.color(duration, t.color, t.color, 0, 1, t); });
		return t; // If you like to chain stuff
	}

	public static inline function length(p : FlxPoint) : Float
		return Math.sqrt(p.x*p.x + p.y*p.y);

	public static function mult(p : FlxPoint, v : Float) : FlxPoint {
		p.x *= v;
		p.y *= v;
		return p;
	}

	public static inline function abs(x : Float) : Float
		return x<0?-x:x;

	public static inline function normalize(p : FlxPoint) : FlxPoint
		return mult(p, 1/length(p));

	public static inline function sign(x : Float) : Int
		return x == 0? 0 : x > 0? 1 : -1;

	public static inline function brighten(x : Int) : Int
		return abs((x + 1 + 256 + 613)%0xffffffff);

	public static inline function darken(x : Int) : Int
		return abs((x - 1 - 256 - 613)%0xffffffff);
}