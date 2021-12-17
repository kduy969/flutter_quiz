import 'stat.dart';

class Stats {

  final int base_stat;
  final int effort;
  final Stat stat;

	Stats.fromJsonMap(Map<String, dynamic> map): 
		base_stat = map["base_stat"],
		effort = map["effort"],
		stat = Stat.fromJsonMap(map["stat"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['base_stat'] = base_stat;
		data['effort'] = effort;
		data['stat'] = stat == null ? null : stat.toJson();
		return data;
	}
}
