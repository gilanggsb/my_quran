// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paging.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Paging {

 int? get totalItems; int? get currentPage; int? get pageSize; int? get totalPages; int? get startPage; int? get endPage; int? get startIndex; int? get endIndex; List<int>? get pages;
/// Create a copy of Paging
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PagingCopyWith<Paging> get copyWith => _$PagingCopyWithImpl<Paging>(this as Paging, _$identity);

  /// Serializes this Paging to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Paging&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.startPage, startPage) || other.startPage == startPage)&&(identical(other.endPage, endPage) || other.endPage == endPage)&&(identical(other.startIndex, startIndex) || other.startIndex == startIndex)&&(identical(other.endIndex, endIndex) || other.endIndex == endIndex)&&const DeepCollectionEquality().equals(other.pages, pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalItems,currentPage,pageSize,totalPages,startPage,endPage,startIndex,endIndex,const DeepCollectionEquality().hash(pages));

@override
String toString() {
  return 'Paging(totalItems: $totalItems, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages, startPage: $startPage, endPage: $endPage, startIndex: $startIndex, endIndex: $endIndex, pages: $pages)';
}


}

/// @nodoc
abstract mixin class $PagingCopyWith<$Res>  {
  factory $PagingCopyWith(Paging value, $Res Function(Paging) _then) = _$PagingCopyWithImpl;
@useResult
$Res call({
 int? totalItems, int? currentPage, int? pageSize, int? totalPages, int? startPage, int? endPage, int? startIndex, int? endIndex, List<int>? pages
});




}
/// @nodoc
class _$PagingCopyWithImpl<$Res>
    implements $PagingCopyWith<$Res> {
  _$PagingCopyWithImpl(this._self, this._then);

  final Paging _self;
  final $Res Function(Paging) _then;

/// Create a copy of Paging
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalItems = freezed,Object? currentPage = freezed,Object? pageSize = freezed,Object? totalPages = freezed,Object? startPage = freezed,Object? endPage = freezed,Object? startIndex = freezed,Object? endIndex = freezed,Object? pages = freezed,}) {
  return _then(_self.copyWith(
totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,startPage: freezed == startPage ? _self.startPage : startPage // ignore: cast_nullable_to_non_nullable
as int?,endPage: freezed == endPage ? _self.endPage : endPage // ignore: cast_nullable_to_non_nullable
as int?,startIndex: freezed == startIndex ? _self.startIndex : startIndex // ignore: cast_nullable_to_non_nullable
as int?,endIndex: freezed == endIndex ? _self.endIndex : endIndex // ignore: cast_nullable_to_non_nullable
as int?,pages: freezed == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}

}


/// @nodoc

@customJsonSerializable
class _Paging implements Paging {
  const _Paging({this.totalItems, this.currentPage, this.pageSize, this.totalPages, this.startPage, this.endPage, this.startIndex, this.endIndex, final  List<int>? pages}): _pages = pages;
  factory _Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);

@override final  int? totalItems;
@override final  int? currentPage;
@override final  int? pageSize;
@override final  int? totalPages;
@override final  int? startPage;
@override final  int? endPage;
@override final  int? startIndex;
@override final  int? endIndex;
 final  List<int>? _pages;
@override List<int>? get pages {
  final value = _pages;
  if (value == null) return null;
  if (_pages is EqualUnmodifiableListView) return _pages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Paging
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PagingCopyWith<_Paging> get copyWith => __$PagingCopyWithImpl<_Paging>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PagingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Paging&&(identical(other.totalItems, totalItems) || other.totalItems == totalItems)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.startPage, startPage) || other.startPage == startPage)&&(identical(other.endPage, endPage) || other.endPage == endPage)&&(identical(other.startIndex, startIndex) || other.startIndex == startIndex)&&(identical(other.endIndex, endIndex) || other.endIndex == endIndex)&&const DeepCollectionEquality().equals(other._pages, _pages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalItems,currentPage,pageSize,totalPages,startPage,endPage,startIndex,endIndex,const DeepCollectionEquality().hash(_pages));

@override
String toString() {
  return 'Paging(totalItems: $totalItems, currentPage: $currentPage, pageSize: $pageSize, totalPages: $totalPages, startPage: $startPage, endPage: $endPage, startIndex: $startIndex, endIndex: $endIndex, pages: $pages)';
}


}

/// @nodoc
abstract mixin class _$PagingCopyWith<$Res> implements $PagingCopyWith<$Res> {
  factory _$PagingCopyWith(_Paging value, $Res Function(_Paging) _then) = __$PagingCopyWithImpl;
@override @useResult
$Res call({
 int? totalItems, int? currentPage, int? pageSize, int? totalPages, int? startPage, int? endPage, int? startIndex, int? endIndex, List<int>? pages
});




}
/// @nodoc
class __$PagingCopyWithImpl<$Res>
    implements _$PagingCopyWith<$Res> {
  __$PagingCopyWithImpl(this._self, this._then);

  final _Paging _self;
  final $Res Function(_Paging) _then;

/// Create a copy of Paging
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalItems = freezed,Object? currentPage = freezed,Object? pageSize = freezed,Object? totalPages = freezed,Object? startPage = freezed,Object? endPage = freezed,Object? startIndex = freezed,Object? endIndex = freezed,Object? pages = freezed,}) {
  return _then(_Paging(
totalItems: freezed == totalItems ? _self.totalItems : totalItems // ignore: cast_nullable_to_non_nullable
as int?,currentPage: freezed == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int?,pageSize: freezed == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int?,totalPages: freezed == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int?,startPage: freezed == startPage ? _self.startPage : startPage // ignore: cast_nullable_to_non_nullable
as int?,endPage: freezed == endPage ? _self.endPage : endPage // ignore: cast_nullable_to_non_nullable
as int?,startIndex: freezed == startIndex ? _self.startIndex : startIndex // ignore: cast_nullable_to_non_nullable
as int?,endIndex: freezed == endIndex ? _self.endIndex : endIndex // ignore: cast_nullable_to_non_nullable
as int?,pages: freezed == pages ? _self._pages : pages // ignore: cast_nullable_to_non_nullable
as List<int>?,
  ));
}


}

// dart format on
