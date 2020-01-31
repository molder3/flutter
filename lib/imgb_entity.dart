import 'package:flutte/generated/json/base/json_convert_content.dart';
import 'package:flutte/generated/json/base/json_filed.dart';

class ImgbEntity with JsonConvert<ImgbEntity> {
	List<ImgbResult> result;
	String message;
	String status;
}

class ImgbResult with JsonConvert<ImgbResult> {
	String imageUrl;
	String jumpUrl;
	int rank;
}
