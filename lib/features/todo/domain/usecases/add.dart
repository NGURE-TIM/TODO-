import 'package:dartz/dartz.dart';
import 'package:todo/shared/error/error_handling/error.dart';
import 'package:todo/shared/utils/usecase.dart';

import '../entities/todo.dart';
import '../repositories/todo_repository.dart';

class AddTodoUseCase implements Usecase<Todo, Todo> {
  final TodoRepository todoRepository;
  AddTodoUseCase({
    required this.todoRepository,
  });

  @override
  Future<Either<Failure, Todo>> call(todo) async{
 return  await todoRepository.add(todo);
  }



}
