
class Emerald {

  final String front_default;
  final String front_shiny;

	Emerald.fromJsonMap(Map<String, dynamic> map): 
		front_default = map["front_default"],
		front_shiny = map["front_shiny"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['front_default'] = front_default;
		data['front_shiny'] = front_shiny;
		return data;
	}
}
