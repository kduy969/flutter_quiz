
class X_y {

  final String front_default;
  final Object front_female;
  final String front_shiny;
  final Object front_shiny_female;

	X_y.fromJsonMap(Map<String, dynamic> map): 
		front_default = map["front_default"],
		front_female = map["front_female"],
		front_shiny = map["front_shiny"],
		front_shiny_female = map["front_shiny_female"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['front_default'] = front_default;
		data['front_female'] = front_female;
		data['front_shiny'] = front_shiny;
		data['front_shiny_female'] = front_shiny_female;
		return data;
	}
}
