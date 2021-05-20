import 'package:moor_flutter/moor_flutter.dart';
import 'package:todo_app_orm/models/task.dart';

part 'database.g.dart';

@UseRowClass(Task)
class Tasks extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  BoolColumn get isHighPriority => boolean().withDefault(Constant(false))();

  Set<Column> get primaryKey => {id};
}

@UseMoor(tables: [Tasks])
class Database extends _$Database {
  Database() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite'));

  @override
  int get schemaVersion => 1;

  Future<List<Task>> getAllTasks() => select(tasks).get();
  Future insertTask(Task task) => into(tasks).insert(task);
  Future deleteTask(Task task) => delete(tasks).delete(task);
}
