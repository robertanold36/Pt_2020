import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
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
                                onPressed: () {},
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
      ),
    );
  }
}
