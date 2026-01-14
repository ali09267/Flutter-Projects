import 'package:flutter/material.dart';
import 'package:my_first_project/pages/login.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: const Color.fromARGB(255, 255, 170, 0),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Dear User! Please sign up',
              style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 11),
            ElevatedButton(
              //when this btn is clicked, HomePage will get pushed in stack
              onPressed: () {
                Navigator.push(
                  //push new page
                  context, //for ref
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginPage(); //return this class
                    },
                  ),
                );
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
