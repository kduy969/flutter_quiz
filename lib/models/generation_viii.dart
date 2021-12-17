import 'icons.dart';

class Generation_viii {

  final Icons icons;

	Generation_viii.fromJsonMap(Map<String, dynamic> map): 
		icons = Icons.fromJsonMap(map["icons"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icons'] = icons == null ? null : icons.toJson();
		return data;
	}
}
