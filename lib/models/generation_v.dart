import 'black_white.dart';

class Generation_v {

  final Black_white black_white;

	Generation_v.fromJsonMap(Map<String, dynamic> map): 
		black_white = Black_white.fromJsonMap(map["black_white"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['black_white'] = black_white == null ? null : black_white.toJson();
		return data;
	}
}
