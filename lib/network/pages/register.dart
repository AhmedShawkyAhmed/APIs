import 'package:flutter/material.dart';
import 'package:api_test/network/pages/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: "Name",
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
              decoration: const InputDecoration(
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
              decoration: const InputDecoration(
                hintText: "Email",
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
                onPressed: () {},
                child: const Text(
                  'Register',
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
                      builder: (context) => const Login(),
                    ),
                  );
                },
                child: const Text(
                  'Login',
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
