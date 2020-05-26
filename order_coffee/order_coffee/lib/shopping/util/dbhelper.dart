import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class DbHelper {
  final int version = 1;
  Database db;

  Future<Database> openDb() async {
    if (db == null) {
      db = await openDatabase(join(await getDatabasesPath(), 'shopping.db'), onCreate: (database, version) {
        database.execute(
          'CREATE TABLE lists(id INTEGER PRIMARY KEY, name TEXT, priority INTEGER'
        );
        database.execute(
            'CREATE TABLE ITEMS(id INTEGER PRIMARY KEY, idList INTEGER, name TEXT, quantity TEXT, note TEXT' + 'FOREIGN KEY(idList) REFERENCES lists(id)'
        );
      }, version: version);
    }
    return db;
  }

  Future testDb() async {
    db = await openDb();
    await db.execute('INSERT INTO lists VALUES (0, "FRUIT", 2)');
    await db.execute(
        'INSERT INTO items VALUES(0, 0, "Apples", "2 kg", "Better if they are green")'
    );
    List lists = await db.rawQuery('SELECT * FROM lists');
    List item = await db.rawQuery('SELECT * FROM lists');
    print(lists[0].toString());
    print(item[0].toString());
  }
}