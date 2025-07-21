// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuranDetailState implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QuranDetailState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QuranDetailState()';
}


}

/// @nodoc
class $QuranDetailStateCopyWith<$Res>  {
$QuranDetailStateCopyWith(QuranDetailState _, $Res Function(QuranDetailState) __);
}


/// @nodoc


class QuranDetailInitialState with DiagnosticableTreeMixin implements QuranDetailState {
  const QuranDetailInitialState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QuranDetailState.initial'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranDetailInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QuranDetailState.initial()';
}


}




/// @nodoc


class QuranDetailLoadingState with DiagnosticableTreeMixin implements QuranDetailState {
  const QuranDetailLoadingState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QuranDetailState.loading'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranDetailLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QuranDetailState.loading()';
}


}




/// @nodoc


class QuranDetaiUpdateState with DiagnosticableTreeMixin implements QuranDetailState {
  const QuranDetaiUpdateState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QuranDetailState.updateState'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranDetaiUpdateState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QuranDetailState.updateState()';
}


}




/// @nodoc


class QuranDetailLoadingMoreDataState with DiagnosticableTreeMixin implements QuranDetailState {
  const QuranDetailLoadingMoreDataState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QuranDetailState.loadingMoreData'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranDetailLoadingMoreDataState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QuranDetailState.loadingMoreData()';
}


}




/// @nodoc


class QuranDetailLoadedState with DiagnosticableTreeMixin implements QuranDetailState {
  const QuranDetailLoadedState();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QuranDetailState.loaded'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranDetailLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QuranDetailState.loaded()';
}


}




/// @nodoc


class QuranDetailFailedState with DiagnosticableTreeMixin implements QuranDetailState {
  const QuranDetailFailedState(this.message);
  

 final  String message;

/// Create a copy of QuranDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuranDetailFailedStateCopyWith<QuranDetailFailedState> get copyWith => _$QuranDetailFailedStateCopyWithImpl<QuranDetailFailedState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'QuranDetailState.failed'))
    ..add(DiagnosticsProperty('message', message));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuranDetailFailedState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'QuranDetailState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $QuranDetailFailedStateCopyWith<$Res> implements $QuranDetailStateCopyWith<$Res> {
  factory $QuranDetailFailedStateCopyWith(QuranDetailFailedState value, $Res Function(QuranDetailFailedState) _then) = _$QuranDetailFailedStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$QuranDetailFailedStateCopyWithImpl<$Res>
    implements $QuranDetailFailedStateCopyWith<$Res> {
  _$QuranDetailFailedStateCopyWithImpl(this._self, this._then);

  final QuranDetailFailedState _self;
  final $Res Function(QuranDetailFailedState) _then;

/// Create a copy of QuranDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(QuranDetailFailedState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
