import 'package:flutte/hotmovie_entity.dart';
import 'package:flutte/generated/json/base/json_filed.dart';
import 'package:intl/intl.dart';

hotmovieEntityFromJson(HotmovieEntity data, Map<String, dynamic> json) {
	if (json['result'] != null) {
		data.result = new List<HotmovieResult>();
		(json['result'] as List).forEach((v) {
			data.result.add(new HotmovieResult().fromJson(v));
		});
	}
	data.message = json['message']?.toString();
	data.status = json['status']?.toString();
	return data;
}

Map<String, dynamic> hotmovieEntityToJson(HotmovieEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.result != null) {
		data['result'] =  entity.result.map((v) => v.toJson()).toList();
	}
	data['message'] = entity.message;
	data['status'] = entity.status;
	return data;
}

hotmovieResultFromJson(HotmovieResult data, Map<String, dynamic> json) {
	data.director = json['director']?.toString();
	data.horizontalImage = json['horizontalImage']?.toString();
	data.imageUrl = json['imageUrl']?.toString();
	data.movieId = json['movieId']?.toInt();
	data.name = json['name']?.toString();
	data.score = json['score']?.toDouble();
	data.starring = json['starring']?.toString();
	return data;
}

Map<String, dynamic> hotmovieResultToJson(HotmovieResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['director'] = entity.director;
	data['horizontalImage'] = entity.horizontalImage;
	data['imageUrl'] = entity.imageUrl;
	data['movieId'] = entity.movieId;
	data['name'] = entity.name;
	data['score'] = entity.score;
	data['starring'] = entity.starring;
	return data;
}