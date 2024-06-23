// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specialityLoading,
    required TResult Function(SpecializationsResponseModel specialityModel)
        specialitySuccess,
    required TResult Function(ErrorHandler error) specialityError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specialityLoading,
    TResult? Function(SpecializationsResponseModel specialityModel)?
        specialitySuccess,
    TResult? Function(ErrorHandler error)? specialityError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specialityLoading,
    TResult Function(SpecializationsResponseModel specialityModel)?
        specialitySuccess,
    TResult Function(ErrorHandler error)? specialityError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialityLoading value) specialityLoading,
    required TResult Function(SpecialitySuccess value) specialitySuccess,
    required TResult Function(SpecialityError value) specialityError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialityLoading value)? specialityLoading,
    TResult? Function(SpecialitySuccess value)? specialitySuccess,
    TResult? Function(SpecialityError value)? specialityError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialityLoading value)? specialityLoading,
    TResult Function(SpecialitySuccess value)? specialitySuccess,
    TResult Function(SpecialityError value)? specialityError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specialityLoading,
    required TResult Function(SpecializationsResponseModel specialityModel)
        specialitySuccess,
    required TResult Function(ErrorHandler error) specialityError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specialityLoading,
    TResult? Function(SpecializationsResponseModel specialityModel)?
        specialitySuccess,
    TResult? Function(ErrorHandler error)? specialityError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specialityLoading,
    TResult Function(SpecializationsResponseModel specialityModel)?
        specialitySuccess,
    TResult Function(ErrorHandler error)? specialityError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialityLoading value) specialityLoading,
    required TResult Function(SpecialitySuccess value) specialitySuccess,
    required TResult Function(SpecialityError value) specialityError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialityLoading value)? specialityLoading,
    TResult? Function(SpecialitySuccess value)? specialitySuccess,
    TResult? Function(SpecialityError value)? specialityError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialityLoading value)? specialityLoading,
    TResult Function(SpecialitySuccess value)? specialitySuccess,
    TResult Function(SpecialityError value)? specialityError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SpecialityLoadingImplCopyWith<$Res> {
  factory _$$SpecialityLoadingImplCopyWith(_$SpecialityLoadingImpl value,
          $Res Function(_$SpecialityLoadingImpl) then) =
      __$$SpecialityLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SpecialityLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecialityLoadingImpl>
    implements _$$SpecialityLoadingImplCopyWith<$Res> {
  __$$SpecialityLoadingImplCopyWithImpl(_$SpecialityLoadingImpl _value,
      $Res Function(_$SpecialityLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpecialityLoadingImpl implements SpecialityLoading {
  const _$SpecialityLoadingImpl();

  @override
  String toString() {
    return 'HomeState.specialityLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SpecialityLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specialityLoading,
    required TResult Function(SpecializationsResponseModel specialityModel)
        specialitySuccess,
    required TResult Function(ErrorHandler error) specialityError,
  }) {
    return specialityLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specialityLoading,
    TResult? Function(SpecializationsResponseModel specialityModel)?
        specialitySuccess,
    TResult? Function(ErrorHandler error)? specialityError,
  }) {
    return specialityLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specialityLoading,
    TResult Function(SpecializationsResponseModel specialityModel)?
        specialitySuccess,
    TResult Function(ErrorHandler error)? specialityError,
    required TResult orElse(),
  }) {
    if (specialityLoading != null) {
      return specialityLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialityLoading value) specialityLoading,
    required TResult Function(SpecialitySuccess value) specialitySuccess,
    required TResult Function(SpecialityError value) specialityError,
  }) {
    return specialityLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialityLoading value)? specialityLoading,
    TResult? Function(SpecialitySuccess value)? specialitySuccess,
    TResult? Function(SpecialityError value)? specialityError,
  }) {
    return specialityLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialityLoading value)? specialityLoading,
    TResult Function(SpecialitySuccess value)? specialitySuccess,
    TResult Function(SpecialityError value)? specialityError,
    required TResult orElse(),
  }) {
    if (specialityLoading != null) {
      return specialityLoading(this);
    }
    return orElse();
  }
}

abstract class SpecialityLoading implements HomeState {
  const factory SpecialityLoading() = _$SpecialityLoadingImpl;
}

/// @nodoc
abstract class _$$SpecialitySuccessImplCopyWith<$Res> {
  factory _$$SpecialitySuccessImplCopyWith(_$SpecialitySuccessImpl value,
          $Res Function(_$SpecialitySuccessImpl) then) =
      __$$SpecialitySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SpecializationsResponseModel specialityModel});
}

/// @nodoc
class __$$SpecialitySuccessImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecialitySuccessImpl>
    implements _$$SpecialitySuccessImplCopyWith<$Res> {
  __$$SpecialitySuccessImplCopyWithImpl(_$SpecialitySuccessImpl _value,
      $Res Function(_$SpecialitySuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialityModel = null,
  }) {
    return _then(_$SpecialitySuccessImpl(
      null == specialityModel
          ? _value.specialityModel
          : specialityModel // ignore: cast_nullable_to_non_nullable
              as SpecializationsResponseModel,
    ));
  }
}

/// @nodoc

class _$SpecialitySuccessImpl implements SpecialitySuccess {
  const _$SpecialitySuccessImpl(this.specialityModel);

  @override
  final SpecializationsResponseModel specialityModel;

  @override
  String toString() {
    return 'HomeState.specialitySuccess(specialityModel: $specialityModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialitySuccessImpl &&
            (identical(other.specialityModel, specialityModel) ||
                other.specialityModel == specialityModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, specialityModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialitySuccessImplCopyWith<_$SpecialitySuccessImpl> get copyWith =>
      __$$SpecialitySuccessImplCopyWithImpl<_$SpecialitySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specialityLoading,
    required TResult Function(SpecializationsResponseModel specialityModel)
        specialitySuccess,
    required TResult Function(ErrorHandler error) specialityError,
  }) {
    return specialitySuccess(specialityModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specialityLoading,
    TResult? Function(SpecializationsResponseModel specialityModel)?
        specialitySuccess,
    TResult? Function(ErrorHandler error)? specialityError,
  }) {
    return specialitySuccess?.call(specialityModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specialityLoading,
    TResult Function(SpecializationsResponseModel specialityModel)?
        specialitySuccess,
    TResult Function(ErrorHandler error)? specialityError,
    required TResult orElse(),
  }) {
    if (specialitySuccess != null) {
      return specialitySuccess(specialityModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialityLoading value) specialityLoading,
    required TResult Function(SpecialitySuccess value) specialitySuccess,
    required TResult Function(SpecialityError value) specialityError,
  }) {
    return specialitySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialityLoading value)? specialityLoading,
    TResult? Function(SpecialitySuccess value)? specialitySuccess,
    TResult? Function(SpecialityError value)? specialityError,
  }) {
    return specialitySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialityLoading value)? specialityLoading,
    TResult Function(SpecialitySuccess value)? specialitySuccess,
    TResult Function(SpecialityError value)? specialityError,
    required TResult orElse(),
  }) {
    if (specialitySuccess != null) {
      return specialitySuccess(this);
    }
    return orElse();
  }
}

abstract class SpecialitySuccess implements HomeState {
  const factory SpecialitySuccess(
          final SpecializationsResponseModel specialityModel) =
      _$SpecialitySuccessImpl;

  SpecializationsResponseModel get specialityModel;
  @JsonKey(ignore: true)
  _$$SpecialitySuccessImplCopyWith<_$SpecialitySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecialityErrorImplCopyWith<$Res> {
  factory _$$SpecialityErrorImplCopyWith(_$SpecialityErrorImpl value,
          $Res Function(_$SpecialityErrorImpl) then) =
      __$$SpecialityErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler error});
}

/// @nodoc
class __$$SpecialityErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$SpecialityErrorImpl>
    implements _$$SpecialityErrorImplCopyWith<$Res> {
  __$$SpecialityErrorImplCopyWithImpl(
      _$SpecialityErrorImpl _value, $Res Function(_$SpecialityErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SpecialityErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$SpecialityErrorImpl implements SpecialityError {
  const _$SpecialityErrorImpl(this.error);

  @override
  final ErrorHandler error;

  @override
  String toString() {
    return 'HomeState.specialityError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecialityErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecialityErrorImplCopyWith<_$SpecialityErrorImpl> get copyWith =>
      __$$SpecialityErrorImplCopyWithImpl<_$SpecialityErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specialityLoading,
    required TResult Function(SpecializationsResponseModel specialityModel)
        specialitySuccess,
    required TResult Function(ErrorHandler error) specialityError,
  }) {
    return specialityError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specialityLoading,
    TResult? Function(SpecializationsResponseModel specialityModel)?
        specialitySuccess,
    TResult? Function(ErrorHandler error)? specialityError,
  }) {
    return specialityError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specialityLoading,
    TResult Function(SpecializationsResponseModel specialityModel)?
        specialitySuccess,
    TResult Function(ErrorHandler error)? specialityError,
    required TResult orElse(),
  }) {
    if (specialityError != null) {
      return specialityError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SpecialityLoading value) specialityLoading,
    required TResult Function(SpecialitySuccess value) specialitySuccess,
    required TResult Function(SpecialityError value) specialityError,
  }) {
    return specialityError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SpecialityLoading value)? specialityLoading,
    TResult? Function(SpecialitySuccess value)? specialitySuccess,
    TResult? Function(SpecialityError value)? specialityError,
  }) {
    return specialityError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SpecialityLoading value)? specialityLoading,
    TResult Function(SpecialitySuccess value)? specialitySuccess,
    TResult Function(SpecialityError value)? specialityError,
    required TResult orElse(),
  }) {
    if (specialityError != null) {
      return specialityError(this);
    }
    return orElse();
  }
}

abstract class SpecialityError implements HomeState {
  const factory SpecialityError(final ErrorHandler error) =
      _$SpecialityErrorImpl;

  ErrorHandler get error;
  @JsonKey(ignore: true)
  _$$SpecialityErrorImplCopyWith<_$SpecialityErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
