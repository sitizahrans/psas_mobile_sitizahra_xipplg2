import 'package:flutter/material.dart';
import 'dashboard.dart';

class Loginpage extends StatelessWidget {
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller =TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text('Halaman Login'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: usernamecontroller,
              decoration: InputDecoration(
                labelText: 'UserName',
                border: UnderlineInputBorder(),
              ),
              obscureText: true,
              validator: (value) {
                {
                  return 'silahkan masukan password';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0,),
            ElevatedButton(
              onPressed: () {
              {

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
               }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    ),
   );
  }
}