import 'package:flutte/imgb_entity.dart';
import 'package:flutte/generated/json/base/json_filed.dart';
import 'package:intl/intl.dart';

imgbEntityFromJson(ImgbEntity data, Map<String, dynamic> json) {
	if (json['result'] != null) {
		data.result = new List<ImgbResult>();
		(json['result'] as List).forEach((v) {
			data.result.add(new ImgbResult().fromJson(v));
		});
	}
	data.message = json['message']?.toString();
	data.status = json['status']?.toString();
	return data;
}

Map<String, dynamic> imgbEntityToJson(ImgbEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.result != null) {
		data['result'] =  entity.result.map((v) => v.toJson()).toList();
	}
	data['message'] = entity.message;
	data['status'] = entity.status;
	return data;
}

imgbResultFromJson(ImgbResult data, Map<String, dynamic> json) {
	data.imageUrl = json['imageUrl']?.toString();
	data.jumpUrl = json['jumpUrl']?.toString();
	data.rank = json['rank']?.toInt();
	return data;
}

Map<String, dynamic> imgbResultToJson(ImgbResult entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['imageUrl'] = entity.imageUrl;
	data['jumpUrl'] = entity.jumpUrl;
	data['rank'] = entity.rank;
	return data;
}