import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegX =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  if (RegExp(emailRegX).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const passwordRegX = r'^[a-zA-Z0-9]+$';
  if (input.length <= 6) {
    return left(ValueFailure.shortPassword(failedValue: input));
  } else if (!(RegExp(passwordRegX).hasMatch(input))) {
    return left(
      ValueFailure.noSpecialCharPresentInPassword(failedValue: input),
    );
  } else {
    return right(input);
  }
}
