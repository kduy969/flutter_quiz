
class Yellow {

  final String back_default;
  final String back_gray;
  final String back_transparent;
  final String front_default;
  final String front_gray;
  final String front_transparent;

	Yellow.fromJsonMap(Map<String, dynamic> map): 
		back_default = map["back_default"],
		back_gray = map["back_gray"],
		back_transparent = map["back_transparent"],
		front_default = map["front_default"],
		front_gray = map["front_gray"],
		front_transparent = map["front_transparent"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['back_default'] = back_default;
		data['back_gray'] = back_gray;
		data['back_transparent'] = back_transparent;
		data['front_default'] = front_default;
		data['front_gray'] = front_gray;
		data['front_transparent'] = front_transparent;
		return data;
	}
}
