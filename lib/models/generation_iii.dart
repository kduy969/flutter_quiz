import 'emerald.dart';
import 'firered_leafgreen.dart';
import 'ruby_sapphire.dart';

class Generation_iii {

  final Emerald emerald;
  final Firered_leafgreen firered_leafgreen;
  final Ruby_sapphire ruby_sapphire;

	Generation_iii.fromJsonMap(Map<String, dynamic> map): 
		emerald = Emerald.fromJsonMap(map["emerald"]),
		firered_leafgreen = Firered_leafgreen.fromJsonMap(map["firered_leafgreen"]),
		ruby_sapphire = Ruby_sapphire.fromJsonMap(map["ruby_sapphire"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['emerald'] = emerald == null ? null : emerald.toJson();
		data['firered_leafgreen'] = firered_leafgreen == null ? null : firered_leafgreen.toJson();
		data['ruby_sapphire'] = ruby_sapphire == null ? null : ruby_sapphire.toJson();
		return data;
	}
}
