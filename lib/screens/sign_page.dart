import 'package:flutter/material.dart';
import 'package:sltapp/screens/home_page.dart';
import '../reusables/large_button.dart';
import '../reusables/text_input_field.dart';
import 'package:sltapp/constance.dart';

class SignPage extends StatelessWidget {
  const SignPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        reverse: false,
        child: SafeArea(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 140.0, bottom: 20),
                  child: const Image(
                    width: 300,
                    height: 100,
                    image: AssetImage('images/sltlogo.png'),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 60.0, vertical: 15.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    'SLT Employee Self Service',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inverseSurface,
                      letterSpacing: 3,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                const TextInputField(
                  hintText: 'User Name',
                  obscureText: false,
                  hMargin: 35,
                  icon: Icon(Icons.account_circle_outlined),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const TextInputField(
                  hintText: 'Password',
                  obscureText: true,
                  hMargin: 35,
                  icon: Icon(Icons.lock),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                LargeButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const HomePage();
                        },
                      ),
                    );
                  },
                  buttonTitle: 'Sign In',
                  hMargin: 35,
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 350),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
