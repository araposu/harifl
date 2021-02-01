import 'package:freezed_annotation/freezed_annotation.dart';

part 'lgtm_image.freezed.dart';

part 'lgtm_image.g.dart';

@freezed
abstract class LgtmImage with _$LgtmImage {
  factory LgtmImage({@required String url, bool isConverted}) = _LgtmImage;

  factory LgtmImage.fromJson(Map<String, dynamic> json) =>
      _$LgtmImageFromJson(json);
}
