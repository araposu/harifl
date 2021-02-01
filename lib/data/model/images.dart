import 'package:freezed_annotation/freezed_annotation.dart';

import 'lgtm_image.dart';

part 'images.freezed.dart';

part 'images.g.dart';

@freezed
abstract class Images with _$Images {
  factory Images({@required List<LgtmImage> images}) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}
