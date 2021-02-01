import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/all.dart';

import '../../data/model/images.dart';
import '../../data/model/result.dart';
import '../../data/provider/lgtm_repository_provider.dart';
import '../../data/repository/lgtm_repository.dart';

final lgtmViewModelProvider = ChangeNotifierProvider(
    (ref) => LgtmViewModel(ref.read(lgtmRepositoryProvider)));

class LgtmViewModel extends ChangeNotifier {
  LgtmViewModel(this._repository);

  final LgtmRepository _repository;

  Result<Images> _images;

  Result<Images> get images => _images;

  Future<void> fetchRecentImages() {
    return _repository
        .getRandomImages()
        .then((value) => _images = value)
        .whenComplete(notifyListeners);
  }

  Future<void> fetchRandomImages() {
    return _repository
        .getRandomImages()
        .then((value) => _images = value)
        .whenComplete(notifyListeners);
  }
}
