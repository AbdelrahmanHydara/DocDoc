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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(
            SpecializationResponseModel specializationResponseModel)
        specializationsSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationResponseModel specializationResponseModel)?
        specializationsSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationResponseModel specializationResponseModel)?
        specializationsSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationsLoading<T> value)
        specializationLoading,
    required TResult Function(Specializationssuccess<T> value)
        specializationsSuccess,
    required TResult Function(Specializationserror<T> value)
        specializationsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationsLoading<T> value)? specializationLoading,
    TResult? Function(Specializationssuccess<T> value)? specializationsSuccess,
    TResult? Function(Specializationserror<T> value)? specializationsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationsLoading<T> value)? specializationLoading,
    TResult Function(Specializationssuccess<T> value)? specializationsSuccess,
    TResult Function(Specializationserror<T> value)? specializationsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(
            SpecializationResponseModel specializationResponseModel)
        specializationsSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationResponseModel specializationResponseModel)?
        specializationsSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationResponseModel specializationResponseModel)?
        specializationsSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationsError,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationsLoading<T> value)
        specializationLoading,
    required TResult Function(Specializationssuccess<T> value)
        specializationsSuccess,
    required TResult Function(Specializationserror<T> value)
        specializationsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationsLoading<T> value)? specializationLoading,
    TResult? Function(Specializationssuccess<T> value)? specializationsSuccess,
    TResult? Function(Specializationserror<T> value)? specializationsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationsLoading<T> value)? specializationLoading,
    TResult Function(Specializationssuccess<T> value)? specializationsSuccess,
    TResult Function(Specializationserror<T> value)? specializationsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements HomeState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$SpecializationsLoadingImplCopyWith<T, $Res> {
  factory _$$SpecializationsLoadingImplCopyWith(
          _$SpecializationsLoadingImpl<T> value,
          $Res Function(_$SpecializationsLoadingImpl<T>) then) =
      __$$SpecializationsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SpecializationsLoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SpecializationsLoadingImpl<T>>
    implements _$$SpecializationsLoadingImplCopyWith<T, $Res> {
  __$$SpecializationsLoadingImplCopyWithImpl(
      _$SpecializationsLoadingImpl<T> _value,
      $Res Function(_$SpecializationsLoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SpecializationsLoadingImpl<T> implements SpecializationsLoading<T> {
  const _$SpecializationsLoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.specializationLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(
            SpecializationResponseModel specializationResponseModel)
        specializationsSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationsError,
  }) {
    return specializationLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationResponseModel specializationResponseModel)?
        specializationsSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationsError,
  }) {
    return specializationLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationResponseModel specializationResponseModel)?
        specializationsSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationsError,
    required TResult orElse(),
  }) {
    if (specializationLoading != null) {
      return specializationLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationsLoading<T> value)
        specializationLoading,
    required TResult Function(Specializationssuccess<T> value)
        specializationsSuccess,
    required TResult Function(Specializationserror<T> value)
        specializationsError,
  }) {
    return specializationLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationsLoading<T> value)? specializationLoading,
    TResult? Function(Specializationssuccess<T> value)? specializationsSuccess,
    TResult? Function(Specializationserror<T> value)? specializationsError,
  }) {
    return specializationLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationsLoading<T> value)? specializationLoading,
    TResult Function(Specializationssuccess<T> value)? specializationsSuccess,
    TResult Function(Specializationserror<T> value)? specializationsError,
    required TResult orElse(),
  }) {
    if (specializationLoading != null) {
      return specializationLoading(this);
    }
    return orElse();
  }
}

abstract class SpecializationsLoading<T> implements HomeState<T> {
  const factory SpecializationsLoading() = _$SpecializationsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SpecializationssuccessImplCopyWith<T, $Res> {
  factory _$$SpecializationssuccessImplCopyWith(
          _$SpecializationssuccessImpl<T> value,
          $Res Function(_$SpecializationssuccessImpl<T>) then) =
      __$$SpecializationssuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({SpecializationResponseModel specializationResponseModel});
}

/// @nodoc
class __$$SpecializationssuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SpecializationssuccessImpl<T>>
    implements _$$SpecializationssuccessImplCopyWith<T, $Res> {
  __$$SpecializationssuccessImplCopyWithImpl(
      _$SpecializationssuccessImpl<T> _value,
      $Res Function(_$SpecializationssuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specializationResponseModel = null,
  }) {
    return _then(_$SpecializationssuccessImpl<T>(
      null == specializationResponseModel
          ? _value.specializationResponseModel
          : specializationResponseModel // ignore: cast_nullable_to_non_nullable
              as SpecializationResponseModel,
    ));
  }
}

/// @nodoc

class _$SpecializationssuccessImpl<T> implements Specializationssuccess<T> {
  const _$SpecializationssuccessImpl(this.specializationResponseModel);

  @override
  final SpecializationResponseModel specializationResponseModel;

  @override
  String toString() {
    return 'HomeState<$T>.specializationsSuccess(specializationResponseModel: $specializationResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationssuccessImpl<T> &&
            (identical(other.specializationResponseModel,
                    specializationResponseModel) ||
                other.specializationResponseModel ==
                    specializationResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, specializationResponseModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationssuccessImplCopyWith<T, _$SpecializationssuccessImpl<T>>
      get copyWith => __$$SpecializationssuccessImplCopyWithImpl<T,
          _$SpecializationssuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(
            SpecializationResponseModel specializationResponseModel)
        specializationsSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationsError,
  }) {
    return specializationsSuccess(specializationResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationResponseModel specializationResponseModel)?
        specializationsSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationsError,
  }) {
    return specializationsSuccess?.call(specializationResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationResponseModel specializationResponseModel)?
        specializationsSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationsError,
    required TResult orElse(),
  }) {
    if (specializationsSuccess != null) {
      return specializationsSuccess(specializationResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationsLoading<T> value)
        specializationLoading,
    required TResult Function(Specializationssuccess<T> value)
        specializationsSuccess,
    required TResult Function(Specializationserror<T> value)
        specializationsError,
  }) {
    return specializationsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationsLoading<T> value)? specializationLoading,
    TResult? Function(Specializationssuccess<T> value)? specializationsSuccess,
    TResult? Function(Specializationserror<T> value)? specializationsError,
  }) {
    return specializationsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationsLoading<T> value)? specializationLoading,
    TResult Function(Specializationssuccess<T> value)? specializationsSuccess,
    TResult Function(Specializationserror<T> value)? specializationsError,
    required TResult orElse(),
  }) {
    if (specializationsSuccess != null) {
      return specializationsSuccess(this);
    }
    return orElse();
  }
}

abstract class Specializationssuccess<T> implements HomeState<T> {
  const factory Specializationssuccess(
          final SpecializationResponseModel specializationResponseModel) =
      _$SpecializationssuccessImpl<T>;

  SpecializationResponseModel get specializationResponseModel;
  @JsonKey(ignore: true)
  _$$SpecializationssuccessImplCopyWith<T, _$SpecializationssuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecializationserrorImplCopyWith<T, $Res> {
  factory _$$SpecializationserrorImplCopyWith(
          _$SpecializationserrorImpl<T> value,
          $Res Function(_$SpecializationserrorImpl<T>) then) =
      __$$SpecializationserrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$SpecializationserrorImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SpecializationserrorImpl<T>>
    implements _$$SpecializationserrorImplCopyWith<T, $Res> {
  __$$SpecializationserrorImplCopyWithImpl(_$SpecializationserrorImpl<T> _value,
      $Res Function(_$SpecializationserrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$SpecializationserrorImpl<T>(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$SpecializationserrorImpl<T> implements Specializationserror<T> {
  const _$SpecializationserrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'HomeState<$T>.specializationsError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationserrorImpl<T> &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationserrorImplCopyWith<T, _$SpecializationserrorImpl<T>>
      get copyWith => __$$SpecializationserrorImplCopyWithImpl<T,
          _$SpecializationserrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() specializationLoading,
    required TResult Function(
            SpecializationResponseModel specializationResponseModel)
        specializationsSuccess,
    required TResult Function(ErrorHandler errorHandler) specializationsError,
  }) {
    return specializationsError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? specializationLoading,
    TResult? Function(SpecializationResponseModel specializationResponseModel)?
        specializationsSuccess,
    TResult? Function(ErrorHandler errorHandler)? specializationsError,
  }) {
    return specializationsError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? specializationLoading,
    TResult Function(SpecializationResponseModel specializationResponseModel)?
        specializationsSuccess,
    TResult Function(ErrorHandler errorHandler)? specializationsError,
    required TResult orElse(),
  }) {
    if (specializationsError != null) {
      return specializationsError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(SpecializationsLoading<T> value)
        specializationLoading,
    required TResult Function(Specializationssuccess<T> value)
        specializationsSuccess,
    required TResult Function(Specializationserror<T> value)
        specializationsError,
  }) {
    return specializationsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(SpecializationsLoading<T> value)? specializationLoading,
    TResult? Function(Specializationssuccess<T> value)? specializationsSuccess,
    TResult? Function(Specializationserror<T> value)? specializationsError,
  }) {
    return specializationsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(SpecializationsLoading<T> value)? specializationLoading,
    TResult Function(Specializationssuccess<T> value)? specializationsSuccess,
    TResult Function(Specializationserror<T> value)? specializationsError,
    required TResult orElse(),
  }) {
    if (specializationsError != null) {
      return specializationsError(this);
    }
    return orElse();
  }
}

abstract class Specializationserror<T> implements HomeState<T> {
  const factory Specializationserror(final ErrorHandler errorHandler) =
      _$SpecializationserrorImpl<T>;

  ErrorHandler get errorHandler;
  @JsonKey(ignore: true)
  _$$SpecializationserrorImplCopyWith<T, _$SpecializationserrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
