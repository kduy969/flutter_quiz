import 'icons.dart';
import 'ultra_sun_ultra_moon.dart';

class Generation_vii {

  final Icons icons;
  final Ultra_sun_ultra_moon ultra_sun_ultra_moon;

	Generation_vii.fromJsonMap(Map<String, dynamic> map): 
		icons = Icons.fromJsonMap(map["icons"]),
		ultra_sun_ultra_moon = Ultra_sun_ultra_moon.fromJsonMap(map["ultra_sun_ultra_moon"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['icons'] = icons == null ? null : icons.toJson();
		data['ultra_sun_ultra_moon'] = ultra_sun_ultra_moon == null ? null : ultra_sun_ultra_moon.toJson();
		return data;
	}
}
