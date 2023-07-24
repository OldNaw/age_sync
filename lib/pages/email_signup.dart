import 'package:age_sync/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:age_sync/pages/email_signup.dart';

class SignUp extends StatefulWidget {
  static const routeName = '/sign-up';
  const SignUp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final bool _isLoading = false;

  String _errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            TextField(
              controller: _confirmPasswordController,
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_errorMessage.isNotEmpty)
                  Text(
                    _errorMessage,
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 16,),
                  
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed(SignUp.routeName);
                      },
                      child: const Text('Forgot Password?'),
                    ),
                    ElevatedButton(
                      onPressed: _isLoading ? null : _signIn,
                      child: const Text('Sign In'),
                    ),
                  ],
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }


  void _signIn() {
    _validatePasswords();
    if (_errorMessage == "") {
      Navigator.of(context).pushReplacementNamed(HomePage.routeName);
    }
    
  }

  void _validatePasswords() {
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;

    if (password == confirmPassword) {
      
      _errorMessage = '';

      final errormessage = _errorMessage;
      
    } else {
      
      _errorMessage = 'Passwords do not match';

      final errormessage = _errorMessage;
    }

    setState(() {});
  }
}
