import 'package:check_one/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';

import '../core/failures.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input.isNotEmpty);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input.isNotEmpty);
    return Password._(validatePassword(input));
  }

  Password._(this.value);
}
