package;


import flash.display.Bitmap;
import flash.display.BitmapData;
import flash.display.MovieClip;
import flash.text.Font;
import flash.media.Sound;
import flash.net.URLRequest;
import flash.utils.ByteArray;
import haxe.Unserializer;
import openfl.Assets;

#if (flash || js)
import flash.display.Loader;
import flash.events.Event;
import flash.net.URLLoader;
#end

#if ios
import openfl.utils.SystemPath;
#end


class DefaultAssetLibrary extends AssetLibrary {
	
	
	public static var className (default, null) = new Map <String, Dynamic> ();
	public static var path (default, null) = new Map <String, String> ();
	public static var type (default, null) = new Map <String, AssetType> ();
	
	
	public function new () {
		
		super ();
		
		#if flash
		
		className.set ("assets/data/fonts/Nevis.ttf", __ASSET__assets_data_fonts_nevis_ttf);
		type.set ("assets/data/fonts/Nevis.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
		className.set ("assets/data/text/index/main.txt", __ASSET__assets_data_text_index_main_txt);
		type.set ("assets/data/text/index/main.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		className.set ("assets/images/avatars/renato.png", __ASSET__assets_images_avatars_renato_png);
		type.set ("assets/images/avatars/renato.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/avatars/rica.png", __ASSET__assets_images_avatars_rica_png);
		type.set ("assets/images/avatars/rica.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/avatars/yan.png", __ASSET__assets_images_avatars_yan_png);
		type.set ("assets/images/avatars/yan.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/avatars/yan2.png", __ASSET__assets_images_avatars_yan2_png);
		type.set ("assets/images/avatars/yan2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/banner.png", __ASSET__assets_images_banner_png);
		type.set ("assets/images/banner.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/construction.jpg", __ASSET__assets_images_construction_jpg);
		type.set ("assets/images/construction.jpg", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/covers/naomi/naomi.png", __ASSET__assets_images_covers_naomi_naomi_png);
		type.set ("assets/images/covers/naomi/naomi.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/covers/naomi/star.png", __ASSET__assets_images_covers_naomi_star_png);
		type.set ("assets/images/covers/naomi/star.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/covers/psycho/ball.png", __ASSET__assets_images_covers_psycho_ball_png);
		type.set ("assets/images/covers/psycho/ball.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/covers/psycho/psycho.png", __ASSET__assets_images_covers_psycho_psycho_png);
		type.set ("assets/images/covers/psycho/psycho.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/dialog.png", __ASSET__assets_images_dialog_png);
		type.set ("assets/images/dialog.png", Reflect.field (AssetType, "image".toUpperCase ()));
		className.set ("assets/images/icon.ico", __ASSET__assets_images_icon_ico);
		type.set ("assets/images/icon.ico", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		
		#elseif html5
		
		className.set ("assets/data/fonts/Nevis.ttf", __ASSET__assets_data_fonts_nevis_ttf);
		type.set ("assets/data/fonts/Nevis.ttf", Reflect.field (AssetType, "font".toUpperCase ()));
		path.set ("assets/data/text/index/main.txt", "assets/data/text/index/main.txt");
		type.set ("assets/data/text/index/main.txt", Reflect.field (AssetType, "text".toUpperCase ()));
		path.set ("assets/images/avatars/renato.png", "assets/images/avatars/renato.png");
		type.set ("assets/images/avatars/renato.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/avatars/rica.png", "assets/images/avatars/rica.png");
		type.set ("assets/images/avatars/rica.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/avatars/yan.png", "assets/images/avatars/yan.png");
		type.set ("assets/images/avatars/yan.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/avatars/yan2.png", "assets/images/avatars/yan2.png");
		type.set ("assets/images/avatars/yan2.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/banner.png", "assets/images/banner.png");
		type.set ("assets/images/banner.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/construction.jpg", "assets/images/construction.jpg");
		type.set ("assets/images/construction.jpg", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/covers/naomi/naomi.png", "assets/images/covers/naomi/naomi.png");
		type.set ("assets/images/covers/naomi/naomi.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/covers/naomi/star.png", "assets/images/covers/naomi/star.png");
		type.set ("assets/images/covers/naomi/star.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/covers/psycho/ball.png", "assets/images/covers/psycho/ball.png");
		type.set ("assets/images/covers/psycho/ball.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/covers/psycho/psycho.png", "assets/images/covers/psycho/psycho.png");
		type.set ("assets/images/covers/psycho/psycho.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/dialog.png", "assets/images/dialog.png");
		type.set ("assets/images/dialog.png", Reflect.field (AssetType, "image".toUpperCase ()));
		path.set ("assets/images/icon.ico", "assets/images/icon.ico");
		type.set ("assets/images/icon.ico", Reflect.field (AssetType, "binary".toUpperCase ()));
		
		
		#else
		
		try {
			
			#if blackberry
			var bytes = ByteArray.readFile ("app/native/manifest");
			#elseif tizen
			var bytes = ByteArray.readFile ("../res/manifest");
			#elseif emscripten
			var bytes = ByteArray.readFile ("assets/manifest");
			#else
			var bytes = ByteArray.readFile ("manifest");
			#end
			
			if (bytes != null) {
				
				bytes.position = 0;
				
				if (bytes.length > 0) {
					
					var data = bytes.readUTFBytes (bytes.length);
					
					if (data != null && data.length > 0) {
						
						var manifest:Array<AssetData> = Unserializer.run (data);
						
						for (asset in manifest) {
							
							path.set (asset.id, asset.path);
							type.set (asset.id, asset.type);
							
						}
						
					}
					
				}
				
			} else {
				
				trace ("Warning: Could not load asset manifest");
				
			}
			
		} catch (e:Dynamic) {
			
			trace ("Warning: Could not load asset manifest");
			
		}
		
		#end
		
	}
	
	
	public override function exists (id:String, type:AssetType):Bool {
		
		var assetType = DefaultAssetLibrary.type.get (id);
		
		#if pixi
		
		if (assetType == IMAGE) {
			
			return true;
			
		} else {
			
			return false;
			
		}
		
		#end
		
		if (assetType != null) {
			
			if (assetType == type || ((type == SOUND || type == MUSIC) && (assetType == MUSIC || assetType == SOUND))) {
				
				return true;
				
			}
			
			#if flash
			
			if ((assetType == BINARY || assetType == TEXT) && type == BINARY) {
				
				return true;
				
			} else if (path.exists (id)) {
				
				return true;
				
			}
			
			#else
			
			if (type == BINARY || type == null) {
				
				return true;
				
			}
			
			#end
			
		}
		
		return false;
		
	}
	
	
	public override function getBitmapData (id:String):BitmapData {
		
		#if pixi
		
		return BitmapData.fromImage (path.get (id));
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), BitmapData);
		
		#elseif js
		
		return cast (ApplicationMain.loaders.get (path.get (id)).contentLoaderInfo.content, Bitmap).bitmapData;
		
		#else
		
		return BitmapData.load (path.get (id));
		
		#end
		
	}
	
	
	public override function getBytes (id:String):ByteArray {
		
		#if pixi
		
		return null;
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), ByteArray);
		
		#elseif js
		
		var bytes:ByteArray = null;
		var data = ApplicationMain.urlLoaders.get (path.get (id)).data;
		
		if (Std.is (data, String)) {
			
			bytes = new ByteArray ();
			bytes.writeUTFBytes (data);
			
		} else if (Std.is (data, ByteArray)) {
			
			bytes = cast data;
			
		} else {
			
			bytes = null;
			
		}

		if (bytes != null) {
			
			bytes.position = 0;
			return bytes;
			
		} else {
			
			return null;
		}
		
		#else
		
		return ByteArray.readFile (path.get (id));
		
		#end
		
	}
	
	
	public override function getFont (id:String):Font {
		
		#if pixi
		
		return null;
		
		#elseif (flash || js)
		
		return cast (Type.createInstance (className.get (id), []), Font);
		
		#else
		
		return new Font (path.get (id));
		
		#end
		
	}
	
	
	public override function getMusic (id:String):Sound {
		
		#if pixi
		
		//return null;		
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return new Sound (new URLRequest (path.get (id)), null, true);
		
		#end
		
	}
	
	
	public override function getPath (id:String):String {
		
		#if ios
		
		return SystemPath.applicationDirectory + "/assets/" + path.get (id);
		
		#else
		
		return path.get (id);
		
		#end
		
	}
	
	
	public override function getSound (id:String):Sound {
		
		#if pixi
		
		return null;
		
		#elseif flash
		
		return cast (Type.createInstance (className.get (id), []), Sound);
		
		#elseif js
		
		return new Sound (new URLRequest (path.get (id)));
		
		#else
		
		return new Sound (new URLRequest (path.get (id)), null, type.get (id) == MUSIC);
		
		#end
		
	}
	
	
	public override function isLocal (id:String, type:AssetType):Bool {
		
		#if flash
		
		if (type != AssetType.MUSIC && type != AssetType.SOUND) {
			
			return className.exists (id);
			
		}
		
		#end
		
		return true;
		
	}
	
	
	public override function loadBitmapData (id:String, handler:BitmapData -> Void):Void {
		
		#if pixi
		
		handler (getBitmapData (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event:Event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBitmapData (id));
			
		}
		
		#else
		
		handler (getBitmapData (id));
		
		#end
		
	}
	
	
	public override function loadBytes (id:String, handler:ByteArray -> Void):Void {
		
		#if pixi
		
		handler (getBytes (id));
		
		#elseif (flash || js)
		
		if (path.exists (id)) {
			
			var loader = new URLLoader ();
			loader.addEventListener (Event.COMPLETE, function (event:Event) {
				
				var bytes = new ByteArray ();
				bytes.writeUTFBytes (event.currentTarget.data);
				bytes.position = 0;
				
				handler (bytes);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {
			
			handler (getBytes (id));
			
		}
		
		#else
		
		handler (getBytes (id));
		
		#end
		
	}
	
	
	public override function loadFont (id:String, handler:Font -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getFont (id));
			
		//}
		
		#else
		
		handler (getFont (id));
		
		#end
		
	}
	
	
	public override function loadMusic (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getMusic (id));
			
		//}
		
		#else
		
		handler (getMusic (id));
		
		#end
		
	}
	
	
	public override function loadSound (id:String, handler:Sound -> Void):Void {
		
		#if (flash || js)
		
		/*if (path.exists (id)) {
			
			var loader = new Loader ();
			loader.contentLoaderInfo.addEventListener (Event.COMPLETE, function (event) {
				
				handler (cast (event.currentTarget.content, Bitmap).bitmapData);
				
			});
			loader.load (new URLRequest (path.get (id)));
			
		} else {*/
			
			handler (getSound (id));
			
		//}
		
		#else
		
		handler (getSound (id));
		
		#end
		
	}
	
	
}


#if pixi
#elseif flash

class __ASSET__assets_data_fonts_nevis_ttf extends flash.text.Font { }
class __ASSET__assets_data_text_index_main_txt extends flash.utils.ByteArray { }
class __ASSET__assets_images_avatars_renato_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_avatars_rica_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_avatars_yan_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_avatars_yan2_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_banner_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_construction_jpg extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_covers_naomi_naomi_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_covers_naomi_star_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_covers_psycho_ball_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_covers_psycho_psycho_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_dialog_png extends flash.display.BitmapData { public function new () { super (0, 0); } }
class __ASSET__assets_images_icon_ico extends flash.utils.ByteArray { }


#elseif html5

class __ASSET__assets_data_fonts_nevis_ttf extends flash.text.Font { }















#end