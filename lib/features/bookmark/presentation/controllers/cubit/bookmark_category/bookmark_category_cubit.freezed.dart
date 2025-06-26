// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bookmark_category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BookmarkCategoryState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkCategoryState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkCategoryState()';
}


}

/// @nodoc
class $BookmarkCategoryStateCopyWith<$Res>  {
$BookmarkCategoryStateCopyWith(BookmarkCategoryState _, $Res Function(BookmarkCategoryState) __);
}


/// @nodoc


class BookmarkCategoryInitialState implements BookmarkCategoryState {
  const BookmarkCategoryInitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkCategoryInitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkCategoryState.initial()';
}


}




/// @nodoc


class BookmarkCategoryLoadingState implements BookmarkCategoryState {
  const BookmarkCategoryLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkCategoryLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkCategoryState.loading()';
}


}




/// @nodoc


class BookmarkCategoryUpdateStateState implements BookmarkCategoryState {
  const BookmarkCategoryUpdateStateState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkCategoryUpdateStateState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkCategoryState.updateState()';
}


}




/// @nodoc


class BookmarkCategoryLoadedState implements BookmarkCategoryState {
  const BookmarkCategoryLoadedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkCategoryLoadedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkCategoryState.loaded()';
}


}




/// @nodoc


class BookmarkCategorySuccessAddToBookmarkState implements BookmarkCategoryState {
  const BookmarkCategorySuccessAddToBookmarkState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkCategorySuccessAddToBookmarkState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'BookmarkCategoryState.successAddToBookmark()';
}


}




/// @nodoc


class BookmarkCategoryFailedState implements BookmarkCategoryState {
  const BookmarkCategoryFailedState(this.message);
  

 final  String message;

/// Create a copy of BookmarkCategoryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BookmarkCategoryFailedStateCopyWith<BookmarkCategoryFailedState> get copyWith => _$BookmarkCategoryFailedStateCopyWithImpl<BookmarkCategoryFailedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BookmarkCategoryFailedState&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BookmarkCategoryState.failed(message: $message)';
}


}

/// @nodoc
abstract mixin class $BookmarkCategoryFailedStateCopyWith<$Res> implements $BookmarkCategoryStateCopyWith<$Res> {
  factory $BookmarkCategoryFailedStateCopyWith(BookmarkCategoryFailedState value, $Res Function(BookmarkCategoryFailedState) _then) = _$BookmarkCategoryFailedStateCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$BookmarkCategoryFailedStateCopyWithImpl<$Res>
    implements $BookmarkCategoryFailedStateCopyWith<$Res> {
  _$BookmarkCategoryFailedStateCopyWithImpl(this._self, this._then);

  final BookmarkCategoryFailedState _self;
  final $Res Function(BookmarkCategoryFailedState) _then;

/// Create a copy of BookmarkCategoryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(BookmarkCategoryFailedState(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
