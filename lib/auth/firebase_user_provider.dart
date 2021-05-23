import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ChartAuditFirebaseUser {
  ChartAuditFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

ChartAuditFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ChartAuditFirebaseUser> chartAuditFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ChartAuditFirebaseUser>(
            (user) => currentUser = ChartAuditFirebaseUser(user));
