package base;

import flixel.FlxState;
import flixel.FlxG;
import flixel.group.FlxTypedGroup;

enum StateEnum {
	StateConst(label : String, path : String);
}

class State extends FlxState {

	public override function draw() {
		super.draw();
		#if !FLX_NO_DEBUG
			super.drawDebug();
		#end
	}

	override public function destroy() : Void {
		Timer.destroy();
		super.destroy();
	}

	public override function update() {
		Timer.updateTimers(FlxG.elapsed);
		super.update();
	}

	public static var About = StateEnum.StateConst("About us!", "states.AboutState");
	public static var Games = StateEnum.StateConst("Games", "states.GamesState");
	public static var Home = StateEnum.StateConst("Home", "states.IndexState");
	public static var Team = StateEnum.StateConst("Team", "states.TeamState");
	public static var Contact = StateEnum.StateConst("Reach us!", "states.ContactState");

	public static var state_list : Array<StateEnum> = [About, Games, Home, Team, Contact];

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