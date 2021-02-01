// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Images _$_$_ImagesFromJson(Map<String, dynamic> json) {
  return _$_Images(
    images: (json['images'] as List)
        ?.map((e) =>
            e == null ? null : LgtmImage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ImagesToJson(_$_Images instance) => <String, dynamic>{
      'images': instance.images,
    };
