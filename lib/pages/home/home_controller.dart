import 'package:firebase_auth/firebase_auth.dart';

class HomeController {
  void signOut() async {
    FirebaseAuth.instance.signOut();
  }
}
