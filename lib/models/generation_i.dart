import 'red_blue.dart';
import 'yellow.dart';

class Generation_i {

  final Red_blue red_blue;
  final Yellow yellow;

	Generation_i.fromJsonMap(Map<String, dynamic> map): 
		red_blue = Red_blue.fromJsonMap(map["red_blue"]),
		yellow = Yellow.fromJsonMap(map["yellow"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['red_blue'] = red_blue == null ? null : red_blue.toJson();
		data['yellow'] = yellow == null ? null : yellow.toJson();
		return data;
	}
}
