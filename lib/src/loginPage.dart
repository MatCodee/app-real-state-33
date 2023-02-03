import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: content_body(),
    );
  }

  Widget content_body() {
    return Container(
      child: Column(
        children: [
          header_data(),
          form_data(),
        ],
      ),
    );
  }

  Widget header_data() {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 100),
      child: Column(
        children: [
          Text(
            "HousApp",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        ],
      ),
    );
  }

  Widget form_data() {
    return Container(
      padding: EdgeInsetsDirectional.only(start: 20, end: 20, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          desing_text("Usuario"),
          input_username_field(),
          desing_text("Clave"),
          input_password_field(),
          desing_btn_login(),
        ],
      ),
    );
  }



  Widget input_username_field() {
    return Container(
      padding: EdgeInsetsDirectional.only(top: 10, bottom: 10),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: const TextField(
          decoration: InputDecoration(
            hintText: 'Enter your email',
            border: OutlineInputBorder(),
            labelText: 'text',
          ),
        ),
      ),
    );
  }

  Widget input_password_field() {
    return Container(
      padding: EdgeInsetsDirectional.only(top: 10, bottom: 10),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: const TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Enter your password',
            border: OutlineInputBorder(),
            labelText: 'Password',
          ),
        ),
      ),
    );
  }


  Widget desing_text(String text) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  Widget desing_btn_login() {
    return Container(
      child: SizedBox(
        width: double.infinity, // <-- match_parent
        height: 50,
        child: ElevatedButton(
          style: ButtonStyle(
          ),
          onPressed: () {},
          child: const Text(
            'Login',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }


}
