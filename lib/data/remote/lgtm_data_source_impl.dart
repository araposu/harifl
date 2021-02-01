import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/cupertino.dart';

import '../model/images.dart';
import 'lgtm_data_source.dart';

class LgtmDataSourceImpl implements LgtmDataSource {
  LgtmDataSourceImpl({@required Dio dio}) : _dio = dio;

  final Dio _dio;

  @override
  Future<Images> getRecentImages() {
    return _dio
        .get<Map<String, dynamic>>(
          '/api/images/recent',
          options: buildCacheOptions(const Duration(seconds: 1)),
        )
        .then((response) => Images.fromJson(response.data));
  }

  @override
  Future<Images> getRandomImages() {
    return _dio
        .get<Map<String, dynamic>>(
          '/api/images/random',
          options: buildCacheOptions(const Duration(seconds: 1)),
        )
        .then((response) => Images.fromJson(response.data));
  }
}
