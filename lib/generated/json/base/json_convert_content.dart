// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutte/imgb_entity.dart';
import 'package:flutte/generated/json/imgb_entity_helper.dart';
import 'package:flutte/hotmovie_entity.dart';
import 'package:flutte/generated/json/hotmovie_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }  static _getFromJson<T>(Type type, data, json) {
    switch (type) {			case ImgbEntity:
			return imgbEntityFromJson(data as ImgbEntity, json) as T;			case ImgbResult:
			return imgbResultFromJson(data as ImgbResult, json) as T;			case HotmovieEntity:
			return hotmovieEntityFromJson(data as HotmovieEntity, json) as T;			case HotmovieResult:
			return hotmovieResultFromJson(data as HotmovieResult, json) as T;    }
    return data as T;
  }  static _getToJson<T>(Type type, data) {
		switch (type) {			case ImgbEntity:
			return imgbEntityToJson(data as ImgbEntity);			case ImgbResult:
			return imgbResultToJson(data as ImgbResult);			case HotmovieEntity:
			return hotmovieEntityToJson(data as HotmovieEntity);			case HotmovieResult:
			return hotmovieResultToJson(data as HotmovieResult);    }
    return data as T;
  }  static T fromJsonAsT<T>(json) {
    switch (T.toString()) {			case 'ImgbEntity':
			return ImgbEntity().fromJson(json) as T;			case 'ImgbResult':
			return ImgbResult().fromJson(json) as T;			case 'HotmovieEntity':
			return HotmovieEntity().fromJson(json) as T;			case 'HotmovieResult':
			return HotmovieResult().fromJson(json) as T;    }
    return null;
  }}