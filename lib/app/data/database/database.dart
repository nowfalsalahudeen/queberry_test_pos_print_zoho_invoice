import 'dart:async';
import 'package:floor/floor.dart';
import 'package:queberry_test_pos_print_zoho_invoice/app/data/dao/user_dao.dart';
import 'package:queberry_test_pos_print_zoho_invoice/app/data/entity/user.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

part 'database.g.dart';

@Database(version: 1, entities: [User])
abstract class AppDatabase extends FloorDatabase {
  UserDao get userDao;
}

Future<AppDatabase> AppDb() async {
  return await $FloorAppDatabase.databaseBuilder('app_database.db').build();
}
