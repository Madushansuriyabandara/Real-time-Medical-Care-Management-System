import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';
import '../role_selection/role_selection_screen.dart'; // Import role selection screen

class LoginScaffold extends StatelessWidget {
  const LoginScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(), // Use the background image
          Center(
            child: BlurredBox(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Reduce the box size based on content
                  children: [
                    const EmailField(),
                    const PasswordField(),
                    const SizedBox(height: 20),
                    LoginButton(),
                    const SizedBox(height: 20),
                    const Text('Or', style: TextStyle(color: Colors.black)),
                    const SizedBox(height: 10),
                    GoogleSignInButton(),
                    const SizedBox(height: 10),
                    FacebookSignInButton(),
                    const SizedBox(height: 20),
                    const Text('Do not have an account?', style: TextStyle(color: Colors.black)),
                    CreateAnAccount(),
                    const SizedBox(height: 20),
                    // Bypass Login Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const RoleSelectionScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      ),
                      child: const Text(
                        'Bypass Login',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
