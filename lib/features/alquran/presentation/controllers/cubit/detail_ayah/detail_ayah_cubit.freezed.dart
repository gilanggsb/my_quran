// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_ayah_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DetailAyahState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailAyahState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailAyahState()';
}


}

/// @nodoc
class $DetailAyahStateCopyWith<$Res>  {
$DetailAyahStateCopyWith(DetailAyahState _, $Res Function(DetailAyahState) __);
}


/// @nodoc


class DetailAyahInitialState implements DetailAyahState {
  const DetailAyahInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailAyahInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailAyahState.initial()';
}


}




/// @nodoc


class DetailAyahLoadingState implements DetailAyahState {
  const DetailAyahLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailAyahLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailAyahState.loading()';
}


}




/// @nodoc


class DetailAyahLoadedState implements DetailAyahState {
  const DetailAyahLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailAyahLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DetailAyahState.loaded()';
}


}




/// @nodoc


class DetailAyahFailedState implements DetailAyahState {
  const DetailAyahFailedState(this.message);
  

 final  String message;

/// Create a copy of DetailAyahState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailAyahFailedStateCopyWith<DetailAyahFailedState> get copyWith => _$DetailAyahFailedStateCopyWithImpl<DetailAyahFailedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailAyahFailedState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'DetailAyahState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $DetailAyahFailedStateCopyWith<$Res> implements $DetailAyahStateCopyWith<$Res> {
  factory $DetailAyahFailedStateCopyWith(DetailAyahFailedState value, $Res Function(DetailAyahFailedState) _then) = _$DetailAyahFailedStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$DetailAyahFailedStateCopyWithImpl<$Res>
    implements $DetailAyahFailedStateCopyWith<$Res> {
  _$DetailAyahFailedStateCopyWithImpl(this._self, this._then);

  final DetailAyahFailedState _self;
  final $Res Function(DetailAyahFailedState) _then;

/// Create a copy of DetailAyahState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(DetailAyahFailedState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
