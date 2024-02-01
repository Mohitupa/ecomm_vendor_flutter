import 'package:flutter/material.dart';

class MobileOTPVerification extends StatefulWidget {
  final String mobileNumber;

  MobileOTPVerification({required this.mobileNumber});

  @override
  _MobileOTPVerificationState createState() => _MobileOTPVerificationState();
}

class _MobileOTPVerificationState extends State<MobileOTPVerification> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile OTP Verification'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter the OTP sent to ${widget.mobileNumber}',
              style: TextStyle(fontSize: 16.0),
            ),
            TextField(
              controller: otpController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'OTP'),
            ),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement OTP verification logic
              },
              child: Text('Verify OTP'),
            ),
            TextButton(
              onPressed: () {
                // TODO: Implement resend OTP logic
              },
              child: Text('Resend OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
