import 'crystal.dart';
import 'gold.dart';
import 'silver.dart';

class Generation_ii {

  final Crystal crystal;
  final Gold gold;
  final Silver silver;

	Generation_ii.fromJsonMap(Map<String, dynamic> map): 
		crystal = Crystal.fromJsonMap(map["crystal"]),
		gold = Gold.fromJsonMap(map["gold"]),
		silver = Silver.fromJsonMap(map["silver"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['crystal'] = crystal == null ? null : crystal.toJson();
		data['gold'] = gold == null ? null : gold.toJson();
		data['silver'] = silver == null ? null : silver.toJson();
		return data;
	}
}
