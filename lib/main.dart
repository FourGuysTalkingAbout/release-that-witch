import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
              ],
            ),
      ),
    );
  }
}
