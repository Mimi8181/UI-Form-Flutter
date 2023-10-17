import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {

  var passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Buat akun",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26
              ),
            ),
            const SizedBox(height: 32,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Email anda',
                labelText: 'Email',
                icon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: passToggle,
              decoration: InputDecoration(
                hintText: 'Password anda',
                labelText: 'Password',
                icon: Icon(Icons.lock),
                suffix: InkWell(
                  onTap: () {
                    setState(() {
                      passToggle = !passToggle;
                    });
                  },
                  child: Icon(
                    passToggle ? Icons.visibility : Icons.visibility_off
                  ),
                )
              ),
            ),
            const SizedBox(height: 200,),
            Text(
              'Sudah punya akun?, Sign in',
              style:  TextStyle(fontSize: 16, color: Colors.blueGrey.shade300),
            )
          ],
        ),
      ),
    );
  }
}


class _TextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool hidden;

  const _TextField({
    Key? key,
    required this.label,
    required this.icon,
    this.hidden = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              cursorColor: Colors.pink.shade400,
              obscureText: hidden,
              enableSuggestions: !hidden,
              autocorrect: !hidden,
              decoration: InputDecoration(
                labelText: label,
                labelStyle: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 18
                ),
                suffixIcon: Icon(icon, color: Colors.grey.shade400,),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink.shade400,
                  )
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}