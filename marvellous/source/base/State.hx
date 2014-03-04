package base;

import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxTypedGroup;

enum StateEnum {
	StateConst(label : String, path : String);
}

class State extends FlxState {
	//private var scrollbar : Scroll;

	override public function create() {
		//scrollbar = new Scroll(this);
		FlxG.cameras.bgColor = Reg.background_color;

		super.create();
	}

	public override function draw() {
		//scrollbar.draw();
		super.draw();
		#if !FLX_NO_DEBUG
			super.drawDebug();
		#end
	}

	override public function destroy() : Void {
		Timer.destroy();
		super.destroy();
		//scrollbar.destroy();
	}

	public override function update() {
		Timer.updateTimers(FlxG.elapsed);
		super.update();
		//scrollbar.update();
	}

	public static var Games = StateEnum.StateConst("Games", "states.GamesState");
	public static var Home = StateEnum.StateConst("Home", "states.IndexState");
	public static var Team = StateEnum.StateConst("Team", "states.TeamState");

	public static var state_list : Array<StateEnum> = [Games, Home, Team];

	public static function getLabel(e : StateEnum) {
		return switch(e) {
			case StateConst(label, path):
				label;
		}
	}

	public static function getPath(e : StateEnum) {
		return switch(e) {
			case StateConst(label, path):
				path;
		}
	}
}