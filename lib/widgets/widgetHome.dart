import 'package:flutter/material.dart';

class WidgetHome extends StatefulWidget {
  final String id;
  final String name;
  final String email;
  final String phone;

  const WidgetHome(
      {Key key, this.id, this.name, this.email, this.phone})
      : super(key: key);

  @override
  _WidgetHomeState createState() => _WidgetHomeState();
}

class _WidgetHomeState extends State<WidgetHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
                      height: 150,
                      width: 200,
                      child: TabBarView(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              color: Colors.blue[200], //here
                              elevation: 1,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: ListTile(
                                      leading: Icon(Icons.album, size: 70),
                                      title: Text(this.widget.name,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                      subtitle: Text("Email ${this.widget.email} \n""Numero: ${this.widget.phone}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold)),
                                      
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 100, top: 15),
                                        width: 50,
                                        height: 20,
                                        child: Text(
                                          "2342",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10, top: 6),
                                        width: 50,
                                        height: 20,
                                        child: Text(
                                          "4736",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10, top: 6),
                                        width: 50,
                                        height: 20,
                                        child: Text(
                                          "136",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 90),
                                        width: 65,
                                        height: 20,
                                        child: Text(
                                          "Popularity",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        width: 50,
                                        height: 20,
                                        child: Text(
                                          "Like",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      Container(
                                        width: 70,
                                        height: 20,
                                        child: Text(
                                          "Followed",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Icon(Icons.directions_transit),
                          Icon(Icons.directions_bike),
                        ],
                      ),
                      
                    );
  }

}
