import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo/features/todo/domain/entities/todo.dart';

abstract class TodoRemoteDatabase {
  Future<Todo> add(Todo todo);
  Future<Todo> edit(Todo todo);
  Future<Todo> delete(Todo todo);
  Future<List<Todo>> getAll();
}


class TodoRemoteImpl implements TodoRemoteDatabase{
  @override
  Future<Todo> add(Todo todo) async {
  await FirebaseFirestore.instance.collection('todos').doc(todo.id).set(todo.toMap());
  return todo;
  }

  @override
  Future<Todo> delete(Todo todo) async {
   await FirebaseFirestore.instance.collection('todos').doc(todo.id).delete();
   return todo;
  }

  @override
  Future<Todo> edit(Todo todo) async {
    await FirebaseFirestore.instance.collection('todos').doc(todo.id).update(todo.toMap());
   return todo;
  }

  @override
  Future<List<Todo>> getAll() async {
    
 final todosData = await FirebaseFirestore.instance.collection('todos').get();
 return todosData.docs.map((item) => Todo.fromMap(item.data())).toList();
  }
  
 
}