package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.group.FlxGroup;
import base.State;
import base.Developer;

private class RenatoImpl extends Developer {
	public function new(y : Float)
		super(y, 
			"Renato \"Totoro\" Lui Geh",
			"Code and Web Design",
			"Appreciator of fine canned beans.", 
			"assets/images/avatars/renato.png");
}

private class RicaImpl extends Developer {
	public function new(y : Float)
		super(y, 
			"Ricardo \"Rica\" Lira da Fonseca",
			"Art and Design",
			"Beethoven, Delacroix, Lord Byron, Arnold Schwarzenegger, Ricardo Fonseca.\n" + 
			"What do all of these geniuses have in common? The vision to turn " +
			"the ordinary into the most astonishingly beautiful piece of art. " + 
			"Just like Da Vinci, this strapping young man crosses the dimensions of art. " +
			"With his cyan-colored eyes on a canvas and his fingers tightly strapped to a pencil " +
			"he creates the most spectacular chef-d'oeuvre. And with his most accurate ears he " +
			"can turn the most chaotic of sounds into a true melody.\n" + 
			"This true maestro is envied by many. Admired by all.",
			"assets/images/avatars/rica.png");
}

private class YanImpl extends Developer {
	public function new(y : Float)
		super(y,
			"Yan \"Yan\" Soares Couto",
			"Code, code and more code", 
			"\"Relaxa. Seriao, relaxa cara.\" - Yan",
			"assets/images/avatars/yan.png");
}

class TeamState extends State {
	var devs : FlxGroup;

	override public function create() : Void {
		devs = new FlxGroup();

		devs.add(new RenatoImpl(350));
		devs.add(new RicaImpl(600));
		devs.add(new YanImpl(850));

		add(new Banner());
		add(new Navbar(300));

		add(devs);

		super.create();
	}
}