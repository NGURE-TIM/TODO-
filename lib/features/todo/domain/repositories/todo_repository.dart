import 'package:todo/features/todo/domain/entities/todo.dart';
import 'package:dartz/dartz.dart';

import '../../../../shared/error/error_handling/error.dart';
abstract class TodoRepository {

Future <Either<Todo,Failure>> add(Todo todo);

Future  <Either <Todo, Failure>> edit(Todo todo);

Future <Either <Todo, Failure>> delete(Todo todo);

Future <Either <Failure,List<Todo>>> getAll();
}