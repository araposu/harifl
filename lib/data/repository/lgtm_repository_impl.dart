import 'package:flutter/cupertino.dart';

import '../model/images.dart';
import '../model/result.dart';
import '../remote/lgtm_data_source.dart';
import 'lgtm_repository.dart';

class LgtmRepositoryImpl implements LgtmRepository {
  LgtmRepositoryImpl({@required LgtmDataSource dataSource})
      : _dataSource = dataSource;

  final LgtmDataSource _dataSource;

  @override
  Future<Result<Images>> getRecentImages() {
    return Result.guardFuture(_dataSource.getRecentImages);
  }

  @override
  Future<Result<Images>> getRandomImages() {
    return Result.guardFuture(_dataSource.getRandomImages);
  }
}
