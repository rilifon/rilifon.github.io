package base;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;

class Developer extends flixel.FlxObject {
	var text : FlxText;
	var image : FlxSprite;

	public function new(y : Float, title : String, role : String, _text : String, img_path : String) {
		super(FlxG.width/10+50, y);

		image = new FlxSprite(x, y);
		image.loadGraphic(img_path, false);

		text = new FlxText(x+150, y, 1250, title+"\n"+role+"\n\n"+_text, 18);
		text.color = Reg.text_color;
		//image.loadGraphic(img_path, false);
	}

	override public function draw() : Void {
		super.draw();

		text.draw();
		image.draw();
	}

	override public function update() : Void {
		super.update();

		text.update();
		image.update();
	}

	override private function get_width() : Float
		return (text.textField.textWidth+text.textField.textWidth/text.text.length)+image.width;

	override private function get_height() : Float
		return text.height+image.height;
}