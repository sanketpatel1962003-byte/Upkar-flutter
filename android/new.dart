import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<User?> signUp(String email, String password) async {
    try {
      UserCredential userCredential =
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print(e);
      return null;
    }
  }
}

// Assuming this is inside your widget's build method
ElevatedButton
(
onPressed: () async {
AuthService auth = AuthService();
// Corrected the typo from 'emailController' to 'emailController'
var user = await auth.signUp(
emailController.text, // Corrected line
passwordController.text,
);

if (user != null) {
print("Signup Successful");
// Consider navigating to another screen or showing a success message
} else {
print("Signup Failed");
// Consider showing an error message to the user
}
},
child: const Text("Sign Up"),
);
