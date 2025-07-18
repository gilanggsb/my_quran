// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jump_ayah_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JumpAyahState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JumpAyahState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JumpAyahState()';
}


}

/// @nodoc
class $JumpAyahStateCopyWith<$Res>  {
$JumpAyahStateCopyWith(JumpAyahState _, $Res Function(JumpAyahState) __);
}


/// @nodoc


class JumpAyahInitialState implements JumpAyahState {
  const JumpAyahInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JumpAyahInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JumpAyahState.initial()';
}


}




/// @nodoc


class JumpAyahLoadingState implements JumpAyahState {
  const JumpAyahLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JumpAyahLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JumpAyahState.loading()';
}


}




/// @nodoc


class JumpAyahLoadedState implements JumpAyahState {
  const JumpAyahLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JumpAyahLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JumpAyahState.loaded()';
}


}




/// @nodoc


class JumpAyahSearchingSurahOrJuzState implements JumpAyahState {
  const JumpAyahSearchingSurahOrJuzState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JumpAyahSearchingSurahOrJuzState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JumpAyahState.searchingSurahOrJuz()';
}


}




/// @nodoc


class JumpAyahFailedState implements JumpAyahState {
  const JumpAyahFailedState(this.message);
  

 final  String message;

/// Create a copy of JumpAyahState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JumpAyahFailedStateCopyWith<JumpAyahFailedState> get copyWith => _$JumpAyahFailedStateCopyWithImpl<JumpAyahFailedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JumpAyahFailedState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'JumpAyahState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $JumpAyahFailedStateCopyWith<$Res> implements $JumpAyahStateCopyWith<$Res> {
  factory $JumpAyahFailedStateCopyWith(JumpAyahFailedState value, $Res Function(JumpAyahFailedState) _then) = _$JumpAyahFailedStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$JumpAyahFailedStateCopyWithImpl<$Res>
    implements $JumpAyahFailedStateCopyWith<$Res> {
  _$JumpAyahFailedStateCopyWithImpl(this._self, this._then);

  final JumpAyahFailedState _self;
  final $Res Function(JumpAyahFailedState) _then;

/// Create a copy of JumpAyahState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(JumpAyahFailedState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
