


import 'package:dartz/dartz.dart';

import '../error/error_handling/error.dart';

abstract class Usecase<Type , param> {
Future<Either<Failure,Type>> call(params);
}