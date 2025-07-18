// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jump_to_ayah_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$JumpToAyahState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JumpToAyahState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JumpToAyahState()';
}


}

/// @nodoc
class $JumpToAyahStateCopyWith<$Res>  {
$JumpToAyahStateCopyWith(JumpToAyahState _, $Res Function(JumpToAyahState) __);
}


/// @nodoc


class JumpToAyahInitialState implements JumpToAyahState {
  const JumpToAyahInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JumpToAyahInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JumpToAyahState.initial()';
}


}




/// @nodoc


class JumpToAyahLoadingState implements JumpToAyahState {
  const JumpToAyahLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JumpToAyahLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JumpToAyahState.loading()';
}


}




/// @nodoc


class JumpToAyahLoadedState implements JumpToAyahState {
  const JumpToAyahLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JumpToAyahLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JumpToAyahState.loaded()';
}


}




/// @nodoc


class JumpToAyahSearchingSurahOrJuzState implements JumpToAyahState {
  const JumpToAyahSearchingSurahOrJuzState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JumpToAyahSearchingSurahOrJuzState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'JumpToAyahState.searchingSurahOrJuz()';
}


}




/// @nodoc


class JumpToAyahFailedState implements JumpToAyahState {
  const JumpToAyahFailedState(this.message);
  

 final  String message;

/// Create a copy of JumpToAyahState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$JumpToAyahFailedStateCopyWith<JumpToAyahFailedState> get copyWith => _$JumpToAyahFailedStateCopyWithImpl<JumpToAyahFailedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JumpToAyahFailedState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'JumpToAyahState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $JumpToAyahFailedStateCopyWith<$Res> implements $JumpToAyahStateCopyWith<$Res> {
  factory $JumpToAyahFailedStateCopyWith(JumpToAyahFailedState value, $Res Function(JumpToAyahFailedState) _then) = _$JumpToAyahFailedStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$JumpToAyahFailedStateCopyWithImpl<$Res>
    implements $JumpToAyahFailedStateCopyWith<$Res> {
  _$JumpToAyahFailedStateCopyWithImpl(this._self, this._then);

  final JumpToAyahFailedState _self;
  final $Res Function(JumpToAyahFailedState) _then;

/// Create a copy of JumpToAyahState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(JumpToAyahFailedState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
