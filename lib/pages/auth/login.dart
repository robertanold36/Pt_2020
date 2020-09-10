import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // String _emailValue = '';
  // String _passwordValue = '';
  final _scalfold = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: _scalfold,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.only(top: 50.0),
                    child: Text(
                      "Team Up",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Text("My first application"),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (String value) {
                          if (value != '') {
                            return null;
                          }
                          return 'field email is required';
                        },
                        controller: _emailController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                              borderSide: BorderSide(width: 8.0),
                            ),
                            hintText: 'Enter email address'),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        validator: (String value) {
                          if (value != '') {
                            return null;
                          }
                          return 'field email is required';
                        },
                        // onChanged: (String value) {
                        //   setState(() {
                        //     _passwordValue = value;
                        //   });
                        // },
                        controller: _passwordController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                                borderSide: BorderSide(width: 8.0)),
                            hintText: 'Enter password'),
                        autofocus: false,
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Forget Password",
                        style: TextStyle(color: Colors.purple),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              onPressed: () {
                                if (_emailController.text ==
                                        'robert@gmail.com' &&
                                    _passwordController.text == '4444') {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return HomePage();
                                  }));
                                }
                                print(_formKey.currentState.validate());
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text('Login'),
                              ),
                              color: Colors.purple,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
