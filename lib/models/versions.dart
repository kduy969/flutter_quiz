import 'generation_i.dart';
import 'generation_ii.dart';
import 'generation_iii.dart';
import 'generation_iv.dart';
import 'generation_v.dart';
import 'generation_vi.dart';
import 'generation_vii.dart';
import 'generation_viii.dart';

class Versions {

  final Generation_i generation_i;
  final Generation_ii generation_ii;
  final Generation_iii generation_iii;
  final Generation_iv generation_iv;
  final Generation_v generation_v;
  final Generation_vi generation_vi;
  final Generation_vii generation_vii;
  final Generation_viii generation_viii;

	Versions.fromJsonMap(Map<String, dynamic> map): 
		generation_i = Generation_i.fromJsonMap(map["generation_i"]),
		generation_ii = Generation_ii.fromJsonMap(map["generation_ii"]),
		generation_iii = Generation_iii.fromJsonMap(map["generation_iii"]),
		generation_iv = Generation_iv.fromJsonMap(map["generation_iv"]),
		generation_v = Generation_v.fromJsonMap(map["generation_v"]),
		generation_vi = Generation_vi.fromJsonMap(map["generation_vi"]),
		generation_vii = Generation_vii.fromJsonMap(map["generation_vii"]),
		generation_viii = Generation_viii.fromJsonMap(map["generation_viii"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['generation_i'] = generation_i == null ? null : generation_i.toJson();
		data['generation_ii'] = generation_ii == null ? null : generation_ii.toJson();
		data['generation_iii'] = generation_iii == null ? null : generation_iii.toJson();
		data['generation_iv'] = generation_iv == null ? null : generation_iv.toJson();
		data['generation_v'] = generation_v == null ? null : generation_v.toJson();
		data['generation_vi'] = generation_vi == null ? null : generation_vi.toJson();
		data['generation_vii'] = generation_vii == null ? null : generation_vii.toJson();
		data['generation_viii'] = generation_viii == null ? null : generation_viii.toJson();
		return data;
	}
}
