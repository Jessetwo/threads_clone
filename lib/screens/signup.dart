import 'package:flutter/material.dart';
import 'package:threads_clone/screens/login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: Image.asset(
                'assets/thread_logo.png',
                width: 80,
              ),
            ),
            //fullname text form field
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextFormField(
                controller: fullNameController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    hintText: ('Enter your fullname'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),

            //Username text form field
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextFormField(
                controller: userNameController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    hintText: ('Enter a Username'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),

            //Email text form field
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    hintText: ('Enter your Email'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),

            //Password text form field
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20),
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    hintText: ('Enter your Password'),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(
                          color: Colors.grey,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
              ),
            ),

            //login button
            SizedBox(
                width: double.infinity,
                height: 42,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                )),
            const Divider(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an Account?"),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.black),
                        ))),
              ],
            )
          ],
        ),
      )),
    );
  }
}
