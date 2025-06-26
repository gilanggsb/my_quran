// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BaseResponse<T> {

 bool? get status; String? get message; Request? get request; Info? get info; Paging? get paging; T? get data;
/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseResponseCopyWith<T, BaseResponse<T>> get copyWith => _$BaseResponseCopyWithImpl<T, BaseResponse<T>>(this as BaseResponse<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseResponse<T>&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.request, request) || other.request == request)&&(identical(other.info, info) || other.info == info)&&(identical(other.paging, paging) || other.paging == paging)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,request,info,paging,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseResponse<$T>(status: $status, message: $message, request: $request, info: $info, paging: $paging, data: $data)';
}


}

/// @nodoc
abstract mixin class $BaseResponseCopyWith<T,$Res>  {
  factory $BaseResponseCopyWith(BaseResponse<T> value, $Res Function(BaseResponse<T>) _then) = _$BaseResponseCopyWithImpl;
@useResult
$Res call({
 bool? status, String? message, Request? request, Info? info, Paging? paging, T? data
});


$RequestCopyWith<$Res>? get request;$InfoCopyWith<$Res>? get info;$PagingCopyWith<$Res>? get paging;

}
/// @nodoc
class _$BaseResponseCopyWithImpl<T,$Res>
    implements $BaseResponseCopyWith<T, $Res> {
  _$BaseResponseCopyWithImpl(this._self, this._then);

  final BaseResponse<T> _self;
  final $Res Function(BaseResponse<T>) _then;

/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? message = freezed,Object? request = freezed,Object? info = freezed,Object? paging = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as Request?,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Info?,paging: freezed == paging ? _self.paging : paging // ignore: cast_nullable_to_non_nullable
as Paging?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}
/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestCopyWith<$Res>? get request {
    if (_self.request == null) {
    return null;
  }

  return $RequestCopyWith<$Res>(_self.request!, (value) {
    return _then(_self.copyWith(request: value));
  });
}/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InfoCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $InfoCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PagingCopyWith<$Res>? get paging {
    if (_self.paging == null) {
    return null;
  }

  return $PagingCopyWith<$Res>(_self.paging!, (value) {
    return _then(_self.copyWith(paging: value));
  });
}
}


/// @nodoc

@JsonSerializable(genericArgumentFactories: true)
class _BaseResponse<T> implements BaseResponse<T> {
  const _BaseResponse({this.status, this.message, this.request, this.info, this.paging, this.data});
  

@override final  bool? status;
@override final  String? message;
@override final  Request? request;
@override final  Info? info;
@override final  Paging? paging;
@override final  T? data;

/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseResponseCopyWith<T, _BaseResponse<T>> get copyWith => __$BaseResponseCopyWithImpl<T, _BaseResponse<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseResponse<T>&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.request, request) || other.request == request)&&(identical(other.info, info) || other.info == info)&&(identical(other.paging, paging) || other.paging == paging)&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,status,message,request,info,paging,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'BaseResponse<$T>(status: $status, message: $message, request: $request, info: $info, paging: $paging, data: $data)';
}


}

/// @nodoc
abstract mixin class _$BaseResponseCopyWith<T,$Res> implements $BaseResponseCopyWith<T, $Res> {
  factory _$BaseResponseCopyWith(_BaseResponse<T> value, $Res Function(_BaseResponse<T>) _then) = __$BaseResponseCopyWithImpl;
@override @useResult
$Res call({
 bool? status, String? message, Request? request, Info? info, Paging? paging, T? data
});


@override $RequestCopyWith<$Res>? get request;@override $InfoCopyWith<$Res>? get info;@override $PagingCopyWith<$Res>? get paging;

}
/// @nodoc
class __$BaseResponseCopyWithImpl<T,$Res>
    implements _$BaseResponseCopyWith<T, $Res> {
  __$BaseResponseCopyWithImpl(this._self, this._then);

  final _BaseResponse<T> _self;
  final $Res Function(_BaseResponse<T>) _then;

/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? message = freezed,Object? request = freezed,Object? info = freezed,Object? paging = freezed,Object? data = freezed,}) {
  return _then(_BaseResponse<T>(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as Request?,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as Info?,paging: freezed == paging ? _self.paging : paging // ignore: cast_nullable_to_non_nullable
as Paging?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,
  ));
}

/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestCopyWith<$Res>? get request {
    if (_self.request == null) {
    return null;
  }

  return $RequestCopyWith<$Res>(_self.request!, (value) {
    return _then(_self.copyWith(request: value));
  });
}/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InfoCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $InfoCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}/// Create a copy of BaseResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PagingCopyWith<$Res>? get paging {
    if (_self.paging == null) {
    return null;
  }

  return $PagingCopyWith<$Res>(_self.paging!, (value) {
    return _then(_self.copyWith(paging: value));
  });
}
}

// dart format on
