import 'diamond_pearl.dart';
import 'heartgold_soulsilver.dart';
import 'platinum.dart';

class Generation_iv {

  final Diamond_pearl diamond_pearl;
  final Heartgold_soulsilver heartgold_soulsilver;
  final Platinum platinum;

	Generation_iv.fromJsonMap(Map<String, dynamic> map): 
		diamond_pearl = Diamond_pearl.fromJsonMap(map["diamond_pearl"]),
		heartgold_soulsilver = Heartgold_soulsilver.fromJsonMap(map["heartgold_soulsilver"]),
		platinum = Platinum.fromJsonMap(map["platinum"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['diamond_pearl'] = diamond_pearl == null ? null : diamond_pearl.toJson();
		data['heartgold_soulsilver'] = heartgold_soulsilver == null ? null : heartgold_soulsilver.toJson();
		data['platinum'] = platinum == null ? null : platinum.toJson();
		return data;
	}
}
