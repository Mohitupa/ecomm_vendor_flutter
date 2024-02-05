import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ecom_bg_srs/components/my_button.dart';
import 'package:ecom_bg_srs/components/my_textfiled.dart';
import 'package:ecom_bg_srs/components/square_title.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LoginPage();
  }
}

class _LoginPage extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void signUserIn(String email, String password) async {
    try {
      Response response = await post(
        Uri.parse('http://localhost:3006/api/admin-auth/login'),
        body: {
          'email': email,
          'password': password,
          "recaptcha":
              "03AFcWeA5v20S31pIkOHrGm_CTyj3otz_bbusWHAjrmSJYbA-uLNWIZEEVH4YhfXDYalHqMWxhD55TIuShKqsZECdK5DeSdlBr9_3nXqXFHdOFFXVLoHScrWaxztNxmKVsJ4T1VtdEoDiooKBZIZ2XFW1rVwC8N_z5DKxkmBdcQhDydWvHBLZyGQK-jBRJtL-gLqNEH-o0L2NLWKBfOtakI2tWyRLRfyzP9D7u94txfZI-4KS0YPX7kuhmXop4YwEwjKDCMUihCGTwI8VTFzqD7e4Eb4lW3cU-jIWEINZW5pXVNtWFLCj21JKlVhc-_6CUyu6n1IiytVqkgwEIX6Ca1y3am4LQIB1lJ2IEQssknSvUUIm63NdmufN5dO4v4X1IzmKTyvFvzJuqL4F6r5J1CsyzNTfnuPlf70_IQo7BTcu6SK5dwIoxLdRozDbcnoApvwHgYjp4FECCk09lEtz7wvpRYS8N3WFb2NzJtOtxcIgEpf7tyHxBZ2XCvcP7eV-QX8a-KMakeMYweVp_AwfZVMJ4bOD-lEqH0kLXEMEqhSCvyXzlz-VhSi65dFtgSDE-tqw0f-nkeFdICbMurLiElsBQFEPyU2hQ1XeeEZ2rytA41dRwmBspo6OBj8-gCvZySLteVsmgl9fIC8TkW4uH4sO7f3bHiGXHIk-zh2f7ZYTDDra6hGERjjaljhEliblOzE6HSBJzLr6R89TJArqhZkepE24gkmClZcfUjG0M4ISLMA-SXHj3wkD5ihahnWhewwE10bC99elBDLQny6nvqeDglj-yxlQ9F2TomcTUJjUSqn_SkrYZSVHDNuEcnvyffqH7SzwVkfvMtlOzhzAAZhpYLkU5wOJ9uYqOfrFa9JL5OIlj-xITcDE5nhGaoGeDEJju5zgaDjo6dwUBiANgNt3_URlA4KU5GeWAVaMdR4I9TKy4nUCCnZgLIvBIY3vTPZkSBdP16vKfw3JfWBi2pBl2-rQhDy2ky5nwmFiwSJ8SHRH0hzK_mMpTdHw_nE7miIUJrQdFwxcvRXxOvvTLbDI-IeSOPcSH5ocZ7Hon2xSlkEzxG4uMF3B8oCYtZg9zPtIKPRYOV1yxLHHZNBu9HdAswF3EfzdxIoOLVBwTEFzCeU0oRJdA9TNJVB9EiRn59UiguekSQ_ZoEwYauKa7_4ltYOfllfCAERXfOlJeMK7NETt7TUHh1Jed6s2PGUCwSoaalVZ9Pb4jom9r0czQdCR_0Hziy8jc-V0A3yZRrD-y73Re-IV7AIIpQQYFqsOuKhG4ziLQEnkbEnuPqXxCBJ9bNkO7WqIMdS2hjicaEutrfnHcDFrQFJmo-eHOZKUxjq9DweeEf3bbZhI_chMFUIPLFaNu0d07elq9k2Qq9sgdsvoQAATt5kLHQhkrFzdj5Kxgd96WCSo6ULFDcE9w4TFwdkh6bwdxahztLznnUnkUUgmhn37vWsT4oKFZTXy8s5hA_IRzP_he0iLO1B2N-bTESDEbgf8BpvZ3WIzo8tZh3JYx0Uwr7rHSaYg9I71ENc852lbgYx5xQYQOeWCSKCyaYhHqiUr5wYiSf_LYQyjMp0BwGGsoMuDl-5Hx5MMu1rjnKPvuy3RA"
        },
      );
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print(data['token']);
        print('Login successfully');
      } else {}
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),

              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 40),

              //welcome back
              Text(
                "Welcome back you've been missed!",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              //username
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              //password
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //button signin
              MyButton(
                onTap: () {
                  signUserIn(
                    usernameController.text.toString(),
                    passwordController.text.toString(),
                  );
                },
              ),

              const SizedBox(height: 40),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or continue with',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 25),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTitle(imagePath: 'assets/images/google.png'),
                  SizedBox(width: 10),
                  SquareTitle(imagePath: 'assets/images/apple.png'),
                ],
              ),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member? ',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue[400],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
