import 'type.dart';

class Types {

  final int slot;
  final Type type;

	Types.fromJsonMap(Map<String, dynamic> map): 
		slot = map["slot"],
		type = Type.fromJsonMap(map["type"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['slot'] = slot;
		data['type'] = type == null ? null : type.toJson();
		return data;
	}
}
