// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Images _$ImagesFromJson(Map<String, dynamic> json) {
  return _Images.fromJson(json);
}

/// @nodoc
class _$ImagesTearOff {
  const _$ImagesTearOff();

// ignore: unused_element
  _Images call({@required List<LgtmImage> images}) {
    return _Images(
      images: images,
    );
  }

// ignore: unused_element
  Images fromJson(Map<String, Object> json) {
    return Images.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Images = _$ImagesTearOff();

/// @nodoc
mixin _$Images {
  List<LgtmImage> get images;

  Map<String, dynamic> toJson();
  $ImagesCopyWith<Images> get copyWith;
}

/// @nodoc
abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) =
      _$ImagesCopyWithImpl<$Res>;
  $Res call({List<LgtmImage> images});
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res> implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

  final Images _value;
  // ignore: unused_field
  final $Res Function(Images) _then;

  @override
  $Res call({
    Object images = freezed,
  }) {
    return _then(_value.copyWith(
      images: images == freezed ? _value.images : images as List<LgtmImage>,
    ));
  }
}

/// @nodoc
abstract class _$ImagesCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$ImagesCopyWith(_Images value, $Res Function(_Images) then) =
      __$ImagesCopyWithImpl<$Res>;
  @override
  $Res call({List<LgtmImage> images});
}

/// @nodoc
class __$ImagesCopyWithImpl<$Res> extends _$ImagesCopyWithImpl<$Res>
    implements _$ImagesCopyWith<$Res> {
  __$ImagesCopyWithImpl(_Images _value, $Res Function(_Images) _then)
      : super(_value, (v) => _then(v as _Images));

  @override
  _Images get _value => super._value as _Images;

  @override
  $Res call({
    Object images = freezed,
  }) {
    return _then(_Images(
      images: images == freezed ? _value.images : images as List<LgtmImage>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Images implements _Images {
  _$_Images({@required this.images}) : assert(images != null);

  factory _$_Images.fromJson(Map<String, dynamic> json) =>
      _$_$_ImagesFromJson(json);

  @override
  final List<LgtmImage> images;

  @override
  String toString() {
    return 'Images(images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Images &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(images);

  @override
  _$ImagesCopyWith<_Images> get copyWith =>
      __$ImagesCopyWithImpl<_Images>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ImagesToJson(this);
  }
}

abstract class _Images implements Images {
  factory _Images({@required List<LgtmImage> images}) = _$_Images;

  factory _Images.fromJson(Map<String, dynamic> json) = _$_Images.fromJson;

  @override
  List<LgtmImage> get images;
  @override
  _$ImagesCopyWith<_Images> get copyWith;
}
