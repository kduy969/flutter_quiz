
class Official_artwork {

  final String front_default;

	Official_artwork.fromJsonMap(Map<String, dynamic> map): 
		front_default = map["front_default"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['front_default'] = front_default;
		return data;
	}
}
