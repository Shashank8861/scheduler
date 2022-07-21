import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class SchedulerFirebaseUser {
  SchedulerFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

SchedulerFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<SchedulerFirebaseUser> schedulerFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<SchedulerFirebaseUser>(
        (user) => currentUser = SchedulerFirebaseUser(user));
