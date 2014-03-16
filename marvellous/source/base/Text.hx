package base;

import flixel.FlxG;
import flixel.text.FlxText;
import flixel.FlxObject;
import flixel.groups.FlxTypedGroup;

class Text extends FlxText {
	private var content : FlxTypedGroup<FlxObject>;

	public function new(x : Float, y : Float, w : Int, ?_text : String, size=20 : Int, ?embed : Bool) {
		super(x, y, w, parse(_text), size, embed);

		color = Reg.text_color;
	}

	public function parse(str : String) : String {
		if(content = null) content = new FlxTypedGroup<FlxObject>();

		var EReg regex = ~/<[a-z]+\s*[a-z]+\={1}\"{1}.*\"\>.*\<\/[a-z]+\>/;
		
	}
}