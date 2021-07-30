
import 'package:flutter/material.dart';
import 'package:api_test/main.dart';
import 'package:api_test/network/pages/home.dart';
import 'package:api_test/network/pages/register.dart';
import 'package:api_test/network/requests/login_request.dart';
import 'package:api_test/network/responses/login_response.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextFormField(
              controller: phone,
              decoration: const InputDecoration(
                counterText: '',
                hintText: "Phone",
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              controller: password,
              decoration: const InputDecoration(
                counterText: '',
                hintText: "Password",
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black.withOpacity(0.5),
              child: TextButton(
                onPressed: () async{
                  LoginResponse loginResponse = await client.login(LoginRequest(
                      phone: phone.text, password: password.text));

                  if (loginResponse.status == 200) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                        (Route<dynamic> route) => false);
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.black.withOpacity(0.5),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Register(),
                    ),
                  );
                },
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
