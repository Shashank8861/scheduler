import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TickTickFirebaseUser {
  TickTickFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

TickTickFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TickTickFirebaseUser> tickTickFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TickTickFirebaseUser>(
            (user) => currentUser = TickTickFirebaseUser(user));
