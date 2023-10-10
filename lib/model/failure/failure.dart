import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.networkError() = _NetworkError;
  const factory Failure.apiError() = _ApiError;
}
