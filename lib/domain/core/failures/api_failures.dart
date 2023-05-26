import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_failures.freezed.dart';

@freezed
abstract class MainFailure with _$MainFailure {
  const factory MainFailure.serverFailure() = ServerFailure;
  const factory MainFailure.clietFailure() = ClientFailure;
}
