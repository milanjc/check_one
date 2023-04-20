import 'package:dartz/dartz.dart';

import 'failures.dart';


abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;

  const ValueObject();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueObject<T> &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'Value($value)';
  }
}
