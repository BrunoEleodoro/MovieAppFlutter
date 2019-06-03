import 'package:flutter/material.dart';
import 'package:movie_app/utils/validation_utils.dart';

class LoginPage extends StatelessWidget {
  var _formKey = GlobalKey<FormState>();

  void login() async {
    _formKey.currentState.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.maxFinite,
                height: 350,
                child: Card(
                  elevation: 5,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        radius: 30,
                        child: Text(
                          'M',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Form(
                        key: _formKey,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    border: OutlineInputBorder()),
                                validator: (value) =>
                                    ValidationUtils().validate(value, 'email'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    border: OutlineInputBorder()),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: double.maxFinite,
                                child: RaisedButton.icon(
                                    onPressed: login,
                                    icon: Icon(Icons.navigate_next),
                                    label: Text('LOGIN')),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
