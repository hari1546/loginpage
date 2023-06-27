import 'package:flutter/material.dart';
import 'package:loginpage/models/call_model.dart';

class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: callsData.length,
        itemBuilder: (context, i) => new Column(
              children: <Widget>[
                new Divider(height: 0.1),
                new ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(callsData[i].pic),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        callsData[i].name,
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                      new Icon(
                        i % 2 == 0 ? Icons.call : Icons.video_call,
                        color: new Color(0xff1e453e),
                      )
                    ],
                  ),
                  subtitle: Text(
                    callsData[i].time,
                    style: TextStyle(color: Colors.grey, fontSize: 12.0),
                  ),
                )
              ],
            ));
  }
}
