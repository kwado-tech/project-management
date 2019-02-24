import 'package:flutter/material.dart';
import 'package:project_manager/theme/theme_colors.dart';

enum AuthMode { Login, SignUp }

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  AuthMode _authMode = AuthMode.Login;

  void _hideKeyPad() {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  Widget _buildTitleRow() {
    return Row(
      children: <Widget>[
        Text(_authMode == AuthMode.Login ? 'Login' : 'Sign Up',
            style: TextStyle(
                color: tAccentColor,
                fontSize: 40.0,
                fontWeight: FontWeight.w900)),
      ],
    );
  }

  Widget _buildPhoneNumberTextField() {
    return TextField(
      keyboardType: TextInputType.phone,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
        hintText: 'Phone Number',
        filled: true,
        fillColor: tTextFieldBackgroundColor,
      ),
    );
  }

  Widget _buildPasswordTextField() {
    return TextField(
      obscureText: true,
      keyboardType: TextInputType.phone,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
        hintText: 'Password',
        filled: true,
        fillColor: tTextFieldBackgroundColor,
      ),
    );
  }

  Widget _buildConfirmPasswordTextField() {
    return _authMode == AuthMode.Login
        ? Container()
        : TextField(
            obscureText: true,
            keyboardType: TextInputType.phone,
            style: TextStyle(fontSize: 20.0),
            decoration: InputDecoration(
              hintText: 'Confirm Password',
              filled: true,
              fillColor: tTextFieldBackgroundColor,
            ),
          );
  }

  Widget _buildFormControl() {
    return InkWell(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        Navigator.of(context).pushReplacementNamed('/supervisors');
      },
      child: Container(
        height: 50.0,
        width: 250.0,
        decoration: BoxDecoration(
          color: tAccentColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        alignment: Alignment.center,
        padding: EdgeInsets.all(10.0),
        child: Text(_authMode == AuthMode.Login ? 'Login' : 'Sign Up',
            style: TextStyle(
                color: tAccentButtonTextColor,
                fontSize: 20.0,
                fontWeight: FontWeight.w900)),
      ),
    );
  }

  Widget _buildAuthModeControl() {
    return InkWell(
      onTap: () {
        _hideKeyPad();
        setState(() {
          _authMode == AuthMode.Login
              ? _authMode = AuthMode.SignUp
              : _authMode = AuthMode.Login;
        });
      },
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _authMode == AuthMode.Login
                  ? 'Dont have an account yet?'
                  : 'Already have an account?',
              style: TextStyle(color: tTextColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 5.0),
            Text(
              _authMode == AuthMode.Login ? 'SIGN UP' : 'LOGIN',
              style:
                  TextStyle(color: tAccentColor, fontWeight: FontWeight.w900),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    _buildTitleRow(),
                    SizedBox(height: 50.0),
                    _buildPhoneNumberTextField(),
                    SizedBox(height: 20.0),
                    _buildPasswordTextField(),
                    SizedBox(height: 20.0),
                    _buildConfirmPasswordTextField(),
                    SizedBox(height: 40.0),
                    _buildFormControl(),
                    SizedBox(height: 50.0),
                    _buildAuthModeControl()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
