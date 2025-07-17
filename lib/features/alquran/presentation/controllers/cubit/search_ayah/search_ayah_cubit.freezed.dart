// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_ayah_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchAyahState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchAyahState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchAyahState()';
}


}

/// @nodoc
class $SearchAyahStateCopyWith<$Res>  {
$SearchAyahStateCopyWith(SearchAyahState _, $Res Function(SearchAyahState) __);
}


/// @nodoc


class SearchAyahInitialState implements SearchAyahState {
  const SearchAyahInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchAyahInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchAyahState.initial()';
}


}




/// @nodoc


class SearchAyahLoadingState implements SearchAyahState {
  const SearchAyahLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchAyahLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchAyahState.loading()';
}


}




/// @nodoc


class SearchAyahLoadedState implements SearchAyahState {
  const SearchAyahLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchAyahLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchAyahState.loaded()';
}


}




/// @nodoc


class SearchAyahSearchingSurahOrJuzState implements SearchAyahState {
  const SearchAyahSearchingSurahOrJuzState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchAyahSearchingSurahOrJuzState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchAyahState.searchingSurahOrJuz()';
}


}




/// @nodoc


class SearchAyahFailedState implements SearchAyahState {
  const SearchAyahFailedState(this.message);
  

 final  String message;

/// Create a copy of SearchAyahState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchAyahFailedStateCopyWith<SearchAyahFailedState> get copyWith => _$SearchAyahFailedStateCopyWithImpl<SearchAyahFailedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchAyahFailedState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SearchAyahState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $SearchAyahFailedStateCopyWith<$Res> implements $SearchAyahStateCopyWith<$Res> {
  factory $SearchAyahFailedStateCopyWith(SearchAyahFailedState value, $Res Function(SearchAyahFailedState) _then) = _$SearchAyahFailedStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$SearchAyahFailedStateCopyWithImpl<$Res>
    implements $SearchAyahFailedStateCopyWith<$Res> {
  _$SearchAyahFailedStateCopyWithImpl(this._self, this._then);

  final SearchAyahFailedState _self;
  final $Res Function(SearchAyahFailedState) _then;

/// Create a copy of SearchAyahState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(SearchAyahFailedState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
