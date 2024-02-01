import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  // Define controllers for text fields
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController alternateContactController = TextEditingController();
  TextEditingController landlineNumberController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController interestsController = TextEditingController();
  TextEditingController socialMediaController = TextEditingController();
  TextEditingController securityPinController = TextEditingController();

  // TODO: Implement OTP verification, resend code, detect OTP from message

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: firstNameController,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            TextField(
              controller: lastNameController,
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email ID'),
            ),
            TextField(
              controller: mobileNumberController,
              decoration: InputDecoration(labelText: 'Mobile Number'),
            ),
            TextField(
              controller: alternateContactController,
              decoration:
                  InputDecoration(labelText: 'Alternate Contact Number'),
            ),
            TextField(
              controller: landlineNumberController,
              decoration: InputDecoration(labelText: 'Landline Number'),
            ),
            TextField(
              controller: dobController,
              decoration: InputDecoration(labelText: 'Date of Birth'),
            ),
            TextField(
              controller: interestsController,
              decoration: InputDecoration(labelText: 'Interests'),
            ),
            TextField(
              controller: socialMediaController,
              decoration: InputDecoration(labelText: 'Social Media'),
            ),
            TextField(
              controller: securityPinController,
              decoration: InputDecoration(labelText: 'Security Pin'),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement form submission and OTP verification
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
