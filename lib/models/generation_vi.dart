import 'omegaruby_alphasapphire.dart';
import 'x_y.dart';

class Generation_vi {

  final Omegaruby_alphasapphire omegaruby_alphasapphire;
  final X_y x_y;

	Generation_vi.fromJsonMap(Map<String, dynamic> map): 
		omegaruby_alphasapphire = Omegaruby_alphasapphire.fromJsonMap(map["omegaruby_alphasapphire"]),
		x_y = X_y.fromJsonMap(map["x_y"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['omegaruby_alphasapphire'] = omegaruby_alphasapphire == null ? null : omegaruby_alphasapphire.toJson();
		data['x_y'] = x_y == null ? null : x_y.toJson();
		return data;
	}
}
