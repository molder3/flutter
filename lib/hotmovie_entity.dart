import 'package:flutte/generated/json/base/json_convert_content.dart';
import 'package:flutte/generated/json/base/json_filed.dart';

class HotmovieEntity with JsonConvert<HotmovieEntity> {
	List<HotmovieResult> result;
	String message;
	String status;
}

class HotmovieResult with JsonConvert<HotmovieResult> {
	String director;
	String horizontalImage;
	String imageUrl;
	int movieId;
	String name;
	double score;
	String starring;
}
