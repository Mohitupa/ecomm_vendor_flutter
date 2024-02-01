import 'package:ecom_bg_srs/pages/auth/verify_otp.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Email and Password Section
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement email and password login logic
              },
              child: Text('Sign In with Email'),
            ),
            SizedBox(height: 16.0),
            Text(
              'OR',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),

            // Mobile OTP Section
            TextField(
              controller: mobileNumberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: 'Mobile Number'),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement logic to send OTP to the entered mobile number
                // Navigate to the OTP verification page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MobileOTPVerification(
                      mobileNumber: mobileNumberController.text,
                    ),
                  ),
                );
              },
              child: Text('Send OTP'),
            ),
            SizedBox(height: 16.0),
            Text(
              'OR',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            // Social Media Section
            Text(
              'Login with Social Media',
              style: TextStyle(fontSize: 16.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Implement Google login
                  },
                  icon: Icon(Icons.g_translate),
                  label: Text('Google'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Implement Facebook login
                  },
                  icon: Icon(Icons.facebook),
                  label: Text('Facebook'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // TODO: Implement Apple login
                  },
                  icon: Icon(Icons.apple),
                  label: Text('Apple'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
