import 'package:flutter/material.dart';
import 'package:facebook_page/Models/facebookcardmodel.dart';

class DetailedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FacebookCardModel model = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(model.fbname),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Total Number of Likes = " + model.reacts.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Total Number of Shares = " + model.shares.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Total Number of Comments = " + model.cmnts.toString(),
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
