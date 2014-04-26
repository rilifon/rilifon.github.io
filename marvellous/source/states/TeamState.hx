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
			"Beautiful and majestic. Misterious yet mystifying. Enthralling and profoundly captivating\n" +
			"Those are a few words that a wise man once used to describe the magical scene that is Renato " +
			"programming. A master of Java, Haxe and Visual Basic, a lover of the finest tea and arts, a companion " +
			"of excellence in bridge, a friend of all living things. Those who are lucky to be embraced by his " +
			"tenderness and kindness know that, even in the darkest hours, Totoro will always face life with a smile " +
			"in his face and a rose in his hand. He can create the most beautiful site while composing sweet melodies " +
			"with his trusted violin. Give him a two-hour cd of 80's music and he will make the most astonishing game you'll ever play.\n\n" +
			"More than a friend, his is an example for us all. Totoro, he will never give you up.", 
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
			"can turn the most chaotic of sounds into a true melody.\n\n" + 
			"This true maestro is envied by many. Admired by all.",
			"assets/images/avatars/rica.png");
}

private class YanImpl extends Developer {
	public function new(y : Float)
		super(y,
			"Yan \"Yan\" Soares Couto",
			"Code, code and more code", 
			"\"Peculiar\".\nThis is the perfect word to describe such a genius of mathematics and coding.\n" +
			"A true stereotype of the mad genius, this highly troubled mind is constantly fighting its primitive " +
			"urges of world domination. But instead of formulating an evil, ingenius plan to enslave humanity, " +
			"Yan focuses all his energy into creating not only innovative, thought-provoking games, but also " +
			"the most gruesome, poorly documented yet incredibly brilliant and efficient algorithms. " +
			"Unstoppable, his only weakness is his heart. His friendly, forgiving and loveable character is " +
			"what prevents him from becoming a mad scientist willing to sacrifice all humanity in exchange for " +
			"a glass of ice cold Cotuba.\n\n" +
			"Science has yet to study his mind. But for now, let his mind study science.",
			"assets/images/avatars/yan.png");
}

class TeamState extends State {
	var devs : FlxGroup;

	override public function create() : Void {
		devs = new FlxGroup();

		devs.add(new RenatoImpl(400));
		devs.add(new RicaImpl(800));
		devs.add(new YanImpl(1150));

		add(new Banner());
		add(new Navbar(300));

		add(devs);

		super.create();
	}
}