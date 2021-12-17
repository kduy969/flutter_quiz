import 'other.dart';
import 'versions.dart';

class Sprites {

  final String back_default;
  final Object back_female;
  final String back_shiny;
  final Object back_shiny_female;
  final String front_default;
  final Object front_female;
  final String front_shiny;
  final Object front_shiny_female;
  final Other other;
  final Versions versions;

	Sprites.fromJsonMap(Map<String, dynamic> map): 
		back_default = map["back_default"],
		back_female = map["back_female"],
		back_shiny = map["back_shiny"],
		back_shiny_female = map["back_shiny_female"],
		front_default = map["front_default"],
		front_female = map["front_female"],
		front_shiny = map["front_shiny"],
		front_shiny_female = map["front_shiny_female"],
		other = Other.fromJsonMap(map["other"]),
		versions = Versions.fromJsonMap(map["versions"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['back_default'] = back_default;
		data['back_female'] = back_female;
		data['back_shiny'] = back_shiny;
		data['back_shiny_female'] = back_shiny_female;
		data['front_default'] = front_default;
		data['front_female'] = front_female;
		data['front_shiny'] = front_shiny;
		data['front_shiny_female'] = front_shiny_female;
		data['other'] = other == null ? null : other.toJson();
		data['versions'] = versions == null ? null : versions.toJson();
		return data;
	}
}
