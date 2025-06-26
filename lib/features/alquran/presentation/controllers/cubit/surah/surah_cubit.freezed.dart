// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'surah_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SurahState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SurahState()';
}


}

/// @nodoc
class $SurahStateCopyWith<$Res>  {
$SurahStateCopyWith(SurahState _, $Res Function(SurahState) __);
}


/// @nodoc


class SurahInitialState implements SurahState {
  const SurahInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SurahState.initial()';
}


}




/// @nodoc


class SurahLoadingState implements SurahState {
  const SurahLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SurahState.loading()';
}


}




/// @nodoc


class SurahLoadedState implements SurahState {
  const SurahLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SurahState.loaded()';
}


}




/// @nodoc


class SurahFailedState implements SurahState {
  const SurahFailedState(this.message);
  

 final  String message;

/// Create a copy of SurahState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SurahFailedStateCopyWith<SurahFailedState> get copyWith => _$SurahFailedStateCopyWithImpl<SurahFailedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SurahFailedState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SurahState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $SurahFailedStateCopyWith<$Res> implements $SurahStateCopyWith<$Res> {
  factory $SurahFailedStateCopyWith(SurahFailedState value, $Res Function(SurahFailedState) _then) = _$SurahFailedStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SurahFailedStateCopyWithImpl<$Res>
    implements $SurahFailedStateCopyWith<$Res> {
  _$SurahFailedStateCopyWithImpl(this._self, this._then);

  final SurahFailedState _self;
  final $Res Function(SurahFailedState) _then;

/// Create a copy of SurahState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SurahFailedState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
