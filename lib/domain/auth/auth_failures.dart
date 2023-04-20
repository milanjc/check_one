import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failures.freezed.dart';

@freezed
abstract class AuthFailures with _$AuthFailures {
  const factory AuthFailures.serverError() = ServerError;

  const factory AuthFailures.noInternetError() = NoInternetError;

  const factory AuthFailures.invalidEmailAndPasswordCombinationError() =
      InvalidEmailAndPasswordCombinationError;
}
