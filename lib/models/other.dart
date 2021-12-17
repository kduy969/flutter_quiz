import 'dream_world.dart';
import 'home.dart';
import 'official_artwork.dart';

class Other {

  final Dream_world dream_world;
  final Home home;
  final Official_artwork official_artwork;

	Other.fromJsonMap(Map<String, dynamic> map): 
		dream_world = Dream_world.fromJsonMap(map["dream_world"]),
		home = Home.fromJsonMap(map["home"]),
		official_artwork = Official_artwork.fromJsonMap(map["official_artwork"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['dream_world'] = dream_world == null ? null : dream_world.toJson();
		data['home'] = home == null ? null : home.toJson();
		data['official_artwork'] = official_artwork == null ? null : official_artwork.toJson();
		return data;
	}
}
