abstract class UserRepositoryInterface {
  late final List<int> usersList;

  void create();
  List<int> read();
  void update();
  void delete();
}

class UserRepository implements UserRepositoryInterface {
  @override
  late final List<int> usersList;

  UserRepository() {
    usersList = [1, 2, 4];
  }

  @override
  void create() => print("Created!");

  @override
  void update() => print("Updated!");

  @override
  void delete() => print("Deleted!");

  @override
  List<int> read() => usersList;
}

void main(List<String> args) {
  UserRepository u = UserRepository();
  u.create();
  u.update();
  u.delete();
  print(u.read());
}
