import 'package:flutter/material.dart';
import 'package:loginpage/models/status_model.dart';

class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                leading: Container(
                  width: 50.0,
                  child: Stack(
                    children: <Widget>[
                      ClipOval(
                        child: Image.network(
                          'https://randomuser.me/api/portraits/women/76.jpg',
                          width: 50,
                          height: 50,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                              color: new Color(0xff00D100),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                title: Text(
                  'MyStatus',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Tab to add Status Update'),
              ),
            )
          ],
        ),
        SizedBox(
          height: 30,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            width: double.infinity,
            color: Colors.grey.shade200,
            child: Text(
              'Recent Update',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.grey.shade500),
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
          itemCount: StatusData.length,
          itemBuilder: (context, i) => new Column(
            children: <Widget>[
              new Divider(height: 0.1),
              new ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(StatusData[i].pic),
                ),
                title: Row(
                  children: <Widget>[
                    new Text(
                      StatusData[i].name,
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ))
      ],
    );
  }
}
