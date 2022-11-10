//import material.dart
import 'package:flutter/material.dart';
//import firebase
import 'package:firebase_core/firebase_core.dart';
//import firebase options
import '../firebase_options.dart';
//import firebase auth
import 'package:firebase_auth/firebase_auth.dart';

//define a custom form widget
class MyCustomSignUpForm extends StatefulWidget {
  const MyCustomSignUpForm({Key? key}) : super(key: key);

  @override
  MyCustomSignUpFormState createState() {
    return MyCustomSignUpFormState();
  }
}

//initiate firebase
Future<void> initFirebase() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

//create a state class for the custom form widget
class MyCustomSignUpFormState extends State<MyCustomSignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your username',
            ),
            onChanged: (value) => {
              setState(
                () {
                  email = value;
                },
              )
            },
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }

              return null;
            },
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'Enter your password',
            ),
            onChanged: (value) => {
              setState(
                () {
                  password = value;
                },
              )
            },
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }

              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () async {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                  //initiate firebase
                  await initFirebase();
                  //create a user
                  await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: email, password: password)
                      .then((value) => {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('User created successfully')),
                            )
                          })
                      .catchError((error) => {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content: Text('Error: $error')),
                            )
                          });
                }
              },
              child: const Text('Sign Up Now'),
            ),
          ),
        ],
      ),
    );
  }
}
