import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
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
            }),
      ),
      body: Form(
          child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.only(top: 50.0),
                child: Text(
                  "Sign Up Page",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
            Text('Fill the form below'),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.all(40.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide: BorderSide(width: 8.0)),
                        hintText: 'Enter Username'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide: BorderSide(width: 8.0)),
                        hintText: 'Enter Email'),
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
                    obscureText: true,
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
                            child: Text('SignUp'),
                          ),
                          color: Colors.purple,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
