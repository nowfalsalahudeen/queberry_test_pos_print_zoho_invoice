import 'package:floor/floor.dart';

import '../entity/user.dart';

@dao
abstract class UserDao {
  @Query('SELECT * FROM User')
  Future<List<User>> findAllUsers();

  @Query('SELECT * FROM User WHERE id = :id')
  Future<User?> findUserById(int id);

  @Query('SELECT * FROM User WHERE email = :email')
  Future<User?> findUserByEmail(String email);

  @insert
  Future<void> insertUser(User user);

  @update
  Future<void> updateUser(User user);

  @delete
  Future<void> deleteUser(User user);

  @Query('DELETE FROM User')
  Future<void> deleteAllUsers();

  @Query('SELECT * FROM User WHERE email = :email AND password = :password')
  Future<User?> findUserByEmailAndPassword(String email, String password);
}
