
class Crystal {

  final String back_default;
  final String back_shiny;
  final String back_shiny_transparent;
  final String back_transparent;
  final String front_default;
  final String front_shiny;
  final String front_shiny_transparent;
  final String front_transparent;

	Crystal.fromJsonMap(Map<String, dynamic> map): 
		back_default = map["back_default"],
		back_shiny = map["back_shiny"],
		back_shiny_transparent = map["back_shiny_transparent"],
		back_transparent = map["back_transparent"],
		front_default = map["front_default"],
		front_shiny = map["front_shiny"],
		front_shiny_transparent = map["front_shiny_transparent"],
		front_transparent = map["front_transparent"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['back_default'] = back_default;
		data['back_shiny'] = back_shiny;
		data['back_shiny_transparent'] = back_shiny_transparent;
		data['back_transparent'] = back_transparent;
		data['front_default'] = front_default;
		data['front_shiny'] = front_shiny;
		data['front_shiny_transparent'] = front_shiny_transparent;
		data['front_transparent'] = front_transparent;
		return data;
	}
}
