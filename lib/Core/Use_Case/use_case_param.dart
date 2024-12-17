import 'package:bookly_app/Core/Error/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCaseParam<T, Param> {
  Future<Either<Failure, T>> call(Param param);
}
