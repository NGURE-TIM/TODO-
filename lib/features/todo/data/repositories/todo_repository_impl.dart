import 'package:dartz/dartz.dart';
import 'package:todo/features/todo/data/database/todo_remote_database.dart';
import 'package:todo/features/todo/domain/entities/todo.dart';
import 'package:todo/features/todo/domain/repositories/todo_repository.dart';

import '../../../../shared/error/error_handling/error.dart';

class TodoRepositoryImpl implements TodoRepository
{
  final TodoRemoteDatabase remoteDatabase;

  TodoRepositoryImpl(this.remoteDatabase);
  
  @override
  Future<Either<Todo, Failure>> add(Todo todo) async {
     final results = await remoteDatabase.add(todo);
    try{
      return(Left(results));
    }catch(e){
return right(Failure(failureMessage: "failureMessage"));
    }
  
  }
  @override
  Future<Either<Todo, Failure>> edit(Todo todo) async {
    final results = await  remoteDatabase.edit(todo);
    try{
      return(Left(results));
    }catch(e){
return right(Failure(failureMessage: "failureMessage"));
    }
  
  }
  @override
  Future<Either<Todo, Failure>> delete(Todo todo) async {
    final results = await remoteDatabase.delete(todo);
    try{
      return(Left(results));
    }catch(e){
return right(Failure(failureMessage: "failureMessage"));
    }
  
  }
  @override
  Future<Either<Failure, List<Todo>>> getAll() async {
      final results = await remoteDatabase.getAll();
     try{
      return(Right(results));
    }catch(e){
return left(Failure(failureMessage: "failureMessage"));
    }
  
  }
}