import 'package:todo/features/todo/domain/entities/todo.dart';

abstract class TodoRepository {
//ADD A TODO
Future<Todo> add(Todo todo);
//EDIT A TODO
Future<Todo> edit(Todo todo);
//DELETE A TODO
Future<Todo> delete(Todo todo);
//GET ALL TODOO
Future<List<Todo>> getAll();
}