// Mocks generated by Mockito 5.4.6 from annotations
// in my_quran/test/alquran/presentation/juz_cubit_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:my_quran/common/common.dart' as _i3;
import 'package:my_quran/features/features.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeQuranRepository_0 extends _i1.SmartFake
    implements _i2.QuranRepository {
  _FakeQuranRepository_0(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeBaseResponse_1<T> extends _i1.SmartFake
    implements _i3.BaseResponse<T> {
  _FakeBaseResponse_1(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

/// A class which mocks [GetJuzs].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetJuzs extends _i1.Mock implements _i2.GetJuzs {
  @override
  _i2.QuranRepository get repository =>
      (super.noSuchMethod(
            Invocation.getter(#repository),
            returnValue: _FakeQuranRepository_0(
              this,
              Invocation.getter(#repository),
            ),
            returnValueForMissingStub: _FakeQuranRepository_0(
              this,
              Invocation.getter(#repository),
            ),
          )
          as _i2.QuranRepository);

  @override
  _i4.Future<_i3.BaseResponse<List<_i2.Juz>?>> call(_i3.NoParams? params) =>
      (super.noSuchMethod(
            Invocation.method(#call, [params]),
            returnValue: _i4.Future<_i3.BaseResponse<List<_i2.Juz>?>>.value(
              _FakeBaseResponse_1<List<_i2.Juz>?>(
                this,
                Invocation.method(#call, [params]),
              ),
            ),
            returnValueForMissingStub:
                _i4.Future<_i3.BaseResponse<List<_i2.Juz>?>>.value(
                  _FakeBaseResponse_1<List<_i2.Juz>?>(
                    this,
                    Invocation.method(#call, [params]),
                  ),
                ),
          )
          as _i4.Future<_i3.BaseResponse<List<_i2.Juz>?>>);
}
