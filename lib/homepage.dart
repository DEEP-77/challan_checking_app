import 'package:challan_checking_app/webview_for_Echallan.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String url = "https://echallan.parivahan.gov.in/index/accused-challan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            checkButton(
              context,
              "Check Challan",
              url,
            ),
          ],
        ),
      ),
    );
  }
}

Widget checkButton(BuildContext context, String name, String url) {
  return Container(
    padding: EdgeInsets.all(20.0),
    child: ElevatedButton(
      child: Text(name),
      onPressed: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewContainer(url),
          ),
        ),
      },
    ),
  );
}
