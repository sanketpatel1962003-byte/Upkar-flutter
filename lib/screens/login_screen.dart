import 'package:flutter/material.dart';
import 'package:upkar/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    // TODO: Implement your actual login logic here
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],


      appBar: AppBar(
        title: const Text('UPKAR'),
        automaticallyImplyLeading: false,

        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email',
                prefixIcon: Icon(Icons.email),
                fillColor: Color(0xfff3f3f4),
                filled: true,
                border: OutlineInputBorder(),


              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                prefixIcon: Icon(Icons.lock),
                fillColor: Color(0xfff3f3f4),
                filled: true,
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_off),

              ),
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,

            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,

                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                textStyle: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),


              ),
              child: const Text('Login'),
              ),
            const SizedBox(height: 16.0),
            const Text(
              'Forgot Password?',

              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),







            ),
          ],
        ),
      ),
    );
  }
}
