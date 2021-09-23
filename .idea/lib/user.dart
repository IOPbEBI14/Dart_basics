abstract class User {
  String email;

  User(this.email);
}

class AdminUser extends User with MailSystem {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

mixin MailSystem on User {
  String getMailSystem() {
    return this.email.split('@')[1];
  }
}

class UserManager<T extends User> {
  Set<T> _users = Set();

  void addUser(T user) {
    _users.add(user);
  }

  void deleteUser(String email) {
    _users.removeWhere((user) => (user.email == email));
  }

  void printUsers() {
    print("Users:");
    _users.forEach((user) {
      user is AdminUser ? print(user.getMailSystem()) : print(user.email);
    });
  }
}
