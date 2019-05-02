import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OAuth Practice',
      home: GoogleOAuth(),
    );
  }
}

class GoogleOAuth extends StatefulWidget {
  @override
  _GoogleOAuthState createState() => _GoogleOAuthState();
}

class _GoogleOAuthState extends State<GoogleOAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Stack(
              fit: StackFit.expand,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Image.network(
//                    'https://cdn3.vectorstock'
//                        '.com/i/1000x1000/20/37/white-cat-sitting-kitten-cute-cartoon-kitty-vector-20462037.jpg',
                    'https://making-the-web.com/sites/default/files/clipart/151618/cute-cartoon-cat-151618-9122693.jpg',
                    fit: BoxFit.fill,
                    color: Color.fromRGBO(255, 255, 255, 0.6),
                    colorBlendMode: BlendMode.modulate,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: 250.0,
                      child: Align(
                        alignment: Alignment.center,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Color(0xffffffff),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(
                                FontAwesomeIcons.google,
                                color: Color(0xff000000),
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                'Sign in with Google',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18.0),
                              ),
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
      ),
    );
  }
}
