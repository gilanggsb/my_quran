import 'package:freezed_annotation/freezed_annotation.dart';

import '../../lib.dart';

part 'base_response.freezed.dart';
part 'base_response.g.dart';

@freezed
abstract class BaseResponse<T> with _$BaseResponse<T> {
  @JsonSerializable(genericArgumentFactories: true)
  const factory BaseResponse({
    bool? status,
    String? message,
    Request? request,
    Info? info,
    Paging? paging,
    T? data,
  }) = _BaseResponse<T>;

  factory BaseResponse.fromJson(Map<String, dynamic> json, FromJsonT<T> fromJsonT) {
    return _$BaseResponseFromJson<T>(json, fromJsonT);
  }

  static BaseResponse<T> success<T>({T? data, String? message}) =>
      BaseResponse<T>(data: data, status: true, message: "Success");

  static BaseResponse<T> failed<T>({T? data, String? message}) =>
      BaseResponse<T>(data: data, status: false, message: message);
}
