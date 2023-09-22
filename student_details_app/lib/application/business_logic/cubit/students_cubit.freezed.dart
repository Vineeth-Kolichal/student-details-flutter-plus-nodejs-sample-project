// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'students_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentsState {
  AllStudentsModel? get allStudentsModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get deleteMsg => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudentsStateCopyWith<StudentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentsStateCopyWith<$Res> {
  factory $StudentsStateCopyWith(
          StudentsState value, $Res Function(StudentsState) then) =
      _$StudentsStateCopyWithImpl<$Res, StudentsState>;
  @useResult
  $Res call(
      {AllStudentsModel? allStudentsModel, bool isLoading, String? deleteMsg});
}

/// @nodoc
class _$StudentsStateCopyWithImpl<$Res, $Val extends StudentsState>
    implements $StudentsStateCopyWith<$Res> {
  _$StudentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allStudentsModel = freezed,
    Object? isLoading = null,
    Object? deleteMsg = freezed,
  }) {
    return _then(_value.copyWith(
      allStudentsModel: freezed == allStudentsModel
          ? _value.allStudentsModel
          : allStudentsModel // ignore: cast_nullable_to_non_nullable
              as AllStudentsModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteMsg: freezed == deleteMsg
          ? _value.deleteMsg
          : deleteMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $StudentsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AllStudentsModel? allStudentsModel, bool isLoading, String? deleteMsg});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$StudentsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allStudentsModel = freezed,
    Object? isLoading = null,
    Object? deleteMsg = freezed,
  }) {
    return _then(_$_Initial(
      allStudentsModel: freezed == allStudentsModel
          ? _value.allStudentsModel
          : allStudentsModel // ignore: cast_nullable_to_non_nullable
              as AllStudentsModel?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteMsg: freezed == deleteMsg
          ? _value.deleteMsg
          : deleteMsg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.allStudentsModel,
      required this.isLoading,
      this.deleteMsg});

  @override
  final AllStudentsModel? allStudentsModel;
  @override
  final bool isLoading;
  @override
  final String? deleteMsg;

  @override
  String toString() {
    return 'StudentsState(allStudentsModel: $allStudentsModel, isLoading: $isLoading, deleteMsg: $deleteMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.allStudentsModel, allStudentsModel) ||
                other.allStudentsModel == allStudentsModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.deleteMsg, deleteMsg) ||
                other.deleteMsg == deleteMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, allStudentsModel, isLoading, deleteMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements StudentsState {
  const factory _Initial(
      {required final AllStudentsModel? allStudentsModel,
      required final bool isLoading,
      final String? deleteMsg}) = _$_Initial;

  @override
  AllStudentsModel? get allStudentsModel;
  @override
  bool get isLoading;
  @override
  String? get deleteMsg;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
