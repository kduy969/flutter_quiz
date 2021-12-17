import 'move_learn_method.dart';
import 'version_group.dart';

class Version_group_details {

  final int level_learned_at;
  final Move_learn_method move_learn_method;
  final Version_group version_group;

	Version_group_details.fromJsonMap(Map<String, dynamic> map): 
		level_learned_at = map["level_learned_at"],
		move_learn_method = Move_learn_method.fromJsonMap(map["move_learn_method"]),
		version_group = Version_group.fromJsonMap(map["version_group"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['level_learned_at'] = level_learned_at;
		data['move_learn_method'] = move_learn_method == null ? null : move_learn_method.toJson();
		data['version_group'] = version_group == null ? null : version_group.toJson();
		return data;
	}
}
