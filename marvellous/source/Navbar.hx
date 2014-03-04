package;

import flixel.FlxG;
import flixel.FlxBasic;
import flixel.group.FlxTypedGroup;
import base.Button;
import base.State;

/* Haxe's compiler won't include indirectly accessed classes. 
 * Therefore I'm including them manually. 
 */
import states.GamesState;
import states.TeamState;

private class NavButton extends Button {
	public var state : Bool;

	public function new(x : Float, y : Float, state : StateEnum) {
		var gambs : NavButton = this;

		super(x, y, State.getLabel(state), function(self : Button) {
			if(!gambs.state)
				FlxG.switchState(Type.createInstance(Type.resolveClass(State.getPath(state)), []));
		});

		this.state = Type.getClassName(Type.getClass(FlxG.state))==State.getPath(state);
		if(this.state) min = mid;
	}
}

class Navbar extends FlxBasic {
	private var buttons : FlxTypedGroup<NavButton>;

	public function new(y : Float) {
		super();

		buttons = new FlxTypedGroup<NavButton>();

		buttons.add(new NavButton(0, y, State.state_list[0]));

		for(i in 1...State.state_list.length)
			buttons.add(new NavButton(50+buttons.members[i-1].x+buttons.members[i-1].width, y, State.state_list[i]));

		var offset = (((buttons.members[State.state_list.length-1].x+buttons.members[State.state_list.length-1].width)-buttons.members[0].x)-FlxG.width)/2;

		for(it in buttons.iterator())
			it.x -= offset;
	}

	override public function update() {
		super.update();

		for(it in buttons.iterator())
			it.update();
	}

	override public function draw() {
		super.draw();

		for(it in buttons.iterator())
			it.draw();
	}
}