import 'models/todo.dart';

/// {@template todos_api}
/// The interface and models for an API providing access to todos.
/// {@endtemplate}
abstract class TodosApi {
  /// {@macro todos_api}
  const TodosApi();

  /// Provides a [Stream] of all todos.
  Stream<List<Todo>> getTodos();

  /// Saves a [todo].
  ///
  /// If a [todo] with the same id already exists, it will be raplaced.
  Future<void> saveTodo(Todo todo);

  /// Deletes the todo with the given id
  ///
  /// If no todo with the given id exists, a [TodoNotFoundExeption] error is
  /// thrown.
  Future<void> deleteTodo(String id);

  /// Deletes all completed todos.
  ///
  /// Returns the number of delete todos.
  Future<int> clearCompleted();

  /// Sets the 'isCompleted' state of all todos to the given value.
  ///
  /// Returns the number of updated todos.
  Future<int> completeAll({required isComplete});
}

/// Error thrown when a [Todo] with a given id is not found.
class TodoNotFoundException implements Exception {}
