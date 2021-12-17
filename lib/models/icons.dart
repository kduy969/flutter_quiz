
class Icons {

  final String front_default;
  final Object front_female;

	Icons.fromJsonMap(Map<String, dynamic> map): 
		front_default = map["front_default"],
		front_female = map["front_female"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['front_default'] = front_default;
		data['front_female'] = front_female;
		return data;
	}
}
