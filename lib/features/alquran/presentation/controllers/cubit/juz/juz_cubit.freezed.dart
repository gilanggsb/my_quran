// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'juz_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JuzState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JuzState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JuzState()';
}


}

/// @nodoc
class $JuzStateCopyWith<$Res>  {
$JuzStateCopyWith(JuzState _, $Res Function(JuzState) __);
}


/// @nodoc


class JuzInitialState implements JuzState {
  const JuzInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JuzInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JuzState.initial()';
}


}




/// @nodoc


class JuzLoadingState implements JuzState {
  const JuzLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JuzLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JuzState.loading()';
}


}




/// @nodoc


class JuzLoadedState implements JuzState {
  const JuzLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JuzLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JuzState.loaded()';
}


}




/// @nodoc


class JuzFailedState implements JuzState {
  const JuzFailedState(this.message);
  

 final  String message;

/// Create a copy of JuzState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JuzFailedStateCopyWith<JuzFailedState> get copyWith => _$JuzFailedStateCopyWithImpl<JuzFailedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JuzFailedState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'JuzState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $JuzFailedStateCopyWith<$Res> implements $JuzStateCopyWith<$Res> {
  factory $JuzFailedStateCopyWith(JuzFailedState value, $Res Function(JuzFailedState) _then) = _$JuzFailedStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$JuzFailedStateCopyWithImpl<$Res>
    implements $JuzFailedStateCopyWith<$Res> {
  _$JuzFailedStateCopyWithImpl(this._self, this._then);

  final JuzFailedState _self;
  final $Res Function(JuzFailedState) _then;

/// Create a copy of JuzState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(JuzFailedState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
