
class Firered_leafgreen {

  final String back_default;
  final String back_shiny;
  final String front_default;
  final String front_shiny;

	Firered_leafgreen.fromJsonMap(Map<String, dynamic> map): 
		back_default = map["back_default"],
		back_shiny = map["back_shiny"],
		front_default = map["front_default"],
		front_shiny = map["front_shiny"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['back_default'] = back_default;
		data['back_shiny'] = back_shiny;
		data['front_default'] = front_default;
		data['front_shiny'] = front_shiny;
		return data;
	}
}
