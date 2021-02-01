// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'lgtm_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
LgtmImage _$LgtmImageFromJson(Map<String, dynamic> json) {
  return _LgtmImage.fromJson(json);
}

/// @nodoc
class _$LgtmImageTearOff {
  const _$LgtmImageTearOff();

// ignore: unused_element
  _LgtmImage call({@required String url, bool isConverted}) {
    return _LgtmImage(
      url: url,
      isConverted: isConverted,
    );
  }

// ignore: unused_element
  LgtmImage fromJson(Map<String, Object> json) {
    return LgtmImage.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $LgtmImage = _$LgtmImageTearOff();

/// @nodoc
mixin _$LgtmImage {
  String get url;
  bool get isConverted;

  Map<String, dynamic> toJson();
  $LgtmImageCopyWith<LgtmImage> get copyWith;
}

/// @nodoc
abstract class $LgtmImageCopyWith<$Res> {
  factory $LgtmImageCopyWith(LgtmImage value, $Res Function(LgtmImage) then) =
      _$LgtmImageCopyWithImpl<$Res>;
  $Res call({String url, bool isConverted});
}

/// @nodoc
class _$LgtmImageCopyWithImpl<$Res> implements $LgtmImageCopyWith<$Res> {
  _$LgtmImageCopyWithImpl(this._value, this._then);

  final LgtmImage _value;
  // ignore: unused_field
  final $Res Function(LgtmImage) _then;

  @override
  $Res call({
    Object url = freezed,
    Object isConverted = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed ? _value.url : url as String,
      isConverted:
          isConverted == freezed ? _value.isConverted : isConverted as bool,
    ));
  }
}

/// @nodoc
abstract class _$LgtmImageCopyWith<$Res> implements $LgtmImageCopyWith<$Res> {
  factory _$LgtmImageCopyWith(
          _LgtmImage value, $Res Function(_LgtmImage) then) =
      __$LgtmImageCopyWithImpl<$Res>;
  @override
  $Res call({String url, bool isConverted});
}

/// @nodoc
class __$LgtmImageCopyWithImpl<$Res> extends _$LgtmImageCopyWithImpl<$Res>
    implements _$LgtmImageCopyWith<$Res> {
  __$LgtmImageCopyWithImpl(_LgtmImage _value, $Res Function(_LgtmImage) _then)
      : super(_value, (v) => _then(v as _LgtmImage));

  @override
  _LgtmImage get _value => super._value as _LgtmImage;

  @override
  $Res call({
    Object url = freezed,
    Object isConverted = freezed,
  }) {
    return _then(_LgtmImage(
      url: url == freezed ? _value.url : url as String,
      isConverted:
          isConverted == freezed ? _value.isConverted : isConverted as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_LgtmImage implements _LgtmImage {
  _$_LgtmImage({@required this.url, this.isConverted}) : assert(url != null);

  factory _$_LgtmImage.fromJson(Map<String, dynamic> json) =>
      _$_$_LgtmImageFromJson(json);

  @override
  final String url;
  @override
  final bool isConverted;

  @override
  String toString() {
    return 'LgtmImage(url: $url, isConverted: $isConverted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LgtmImage &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.isConverted, isConverted) ||
                const DeepCollectionEquality()
                    .equals(other.isConverted, isConverted)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(isConverted);

  @override
  _$LgtmImageCopyWith<_LgtmImage> get copyWith =>
      __$LgtmImageCopyWithImpl<_LgtmImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LgtmImageToJson(this);
  }
}

abstract class _LgtmImage implements LgtmImage {
  factory _LgtmImage({@required String url, bool isConverted}) = _$_LgtmImage;

  factory _LgtmImage.fromJson(Map<String, dynamic> json) =
      _$_LgtmImage.fromJson;

  @override
  String get url;
  @override
  bool get isConverted;
  @override
  _$LgtmImageCopyWith<_LgtmImage> get copyWith;
}
