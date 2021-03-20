import 'package:dartz/dartz.dart';

abstract class FailableUsecase<Error, Input, Output> {
  Future<Either<Error, Output>> call(Input input);
}
