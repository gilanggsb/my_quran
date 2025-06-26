// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// @nodoc


class HomeStartedEvent implements HomeEvent {
  const HomeStartedEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStartedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.started()';
}


}




/// @nodoc


class HomeGetDataEvent implements HomeEvent {
  const HomeGetDataEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeGetDataEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getData()';
}


}




/// @nodoc


class HomeSearchSurahJuzEvent implements HomeEvent {
  const HomeSearchSurahJuzEvent(this.query);
  

 final  String query;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeSearchSurahJuzEventCopyWith<HomeSearchSurahJuzEvent> get copyWith => _$HomeSearchSurahJuzEventCopyWithImpl<HomeSearchSurahJuzEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSearchSurahJuzEvent&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'HomeEvent.searchSurahJuz(query: $query)';
}


}

/// @nodoc
abstract mixin class $HomeSearchSurahJuzEventCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $HomeSearchSurahJuzEventCopyWith(HomeSearchSurahJuzEvent value, $Res Function(HomeSearchSurahJuzEvent) _then) = _$HomeSearchSurahJuzEventCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$HomeSearchSurahJuzEventCopyWithImpl<$Res>
    implements $HomeSearchSurahJuzEventCopyWith<$Res> {
  _$HomeSearchSurahJuzEventCopyWithImpl(this._self, this._then);

  final HomeSearchSurahJuzEvent _self;
  final $Res Function(HomeSearchSurahJuzEvent) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(HomeSearchSurahJuzEvent(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class HomeClearSearchEvent implements HomeEvent {
  const HomeClearSearchEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeClearSearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.clearSearch()';
}


}




/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// @nodoc


class HomeInitialState implements HomeState {
  const HomeInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class HomeLoadingState implements HomeState {
  const HomeLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class HomeSuccessState implements HomeState {
  const HomeSuccessState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSuccessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loaded()';
}


}




/// @nodoc


class HomeSearchingState implements HomeState {
  const HomeSearchingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSearchingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.searching()';
}


}




/// @nodoc


class HomeSearchedSurahJuzState implements HomeState {
  const HomeSearchedSurahJuzState(this.query);
  

 final  String query;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeSearchedSurahJuzStateCopyWith<HomeSearchedSurahJuzState> get copyWith => _$HomeSearchedSurahJuzStateCopyWithImpl<HomeSearchedSurahJuzState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeSearchedSurahJuzState&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'HomeState.searchedSurahJuz(query: $query)';
}


}

/// @nodoc
abstract mixin class $HomeSearchedSurahJuzStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeSearchedSurahJuzStateCopyWith(HomeSearchedSurahJuzState value, $Res Function(HomeSearchedSurahJuzState) _then) = _$HomeSearchedSurahJuzStateCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$HomeSearchedSurahJuzStateCopyWithImpl<$Res>
    implements $HomeSearchedSurahJuzStateCopyWith<$Res> {
  _$HomeSearchedSurahJuzStateCopyWithImpl(this._self, this._then);

  final HomeSearchedSurahJuzState _self;
  final $Res Function(HomeSearchedSurahJuzState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(HomeSearchedSurahJuzState(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class HomeErrorState implements HomeState {
  const HomeErrorState(this.message);
  

 final  String message;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeErrorStateCopyWith<HomeErrorState> get copyWith => _$HomeErrorStateCopyWithImpl<HomeErrorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeErrorState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'HomeState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $HomeErrorStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $HomeErrorStateCopyWith(HomeErrorState value, $Res Function(HomeErrorState) _then) = _$HomeErrorStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$HomeErrorStateCopyWithImpl<$Res>
    implements $HomeErrorStateCopyWith<$Res> {
  _$HomeErrorStateCopyWithImpl(this._self, this._then);

  final HomeErrorState _self;
  final $Res Function(HomeErrorState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(HomeErrorState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
