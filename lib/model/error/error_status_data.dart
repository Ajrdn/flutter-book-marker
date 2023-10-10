import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_status_data.freezed.dart';

@freezed
class ErrorStatusData with _$ErrorStatusData {
  const factory ErrorStatusData({
    required bool isApi,
    required bool isNetwork,
  }) = _ErrorStatusData;

  const ErrorStatusData._();
  factory ErrorStatusData.empty() =>
      const ErrorStatusData(isApi: false, isNetwork: false);
}
