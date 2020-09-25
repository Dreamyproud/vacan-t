import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pruebas_flutter/pages/servicesHome/service.dart';
import 'package:pruebas_flutter/widgets/widgetHome.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/homePage";

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  int cards = 15;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.purple,
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
              appBar: AppBar(
                flexibleSpace: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                        Colors.purple[300],
                        Colors.purple[600]
                      ])),
                ),
                bottom: TabBar(
                  tabs: [
                    Tab(text: "Designer"),
                    Tab(text: "Category"),
                    Tab(text: "Attention"),
                  ],
                ),
                leading: Icon(
                  FontAwesomeIcons.arrowLeft,
                  size: 17,
                ),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(
                      FontAwesomeIcons.bars,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      // do something
                    },
                  )
                ],
              ),
              body: Container(
                  padding: EdgeInsets.only(left: 15, right: 10, top: 10),
                  width: 350,
                  child: _card()))),
    );
  }

  Widget _card() {
    var service;
    return FutureBuilder<dynamic>(
        future: getUsers(context),
        builder: (context, i) {
          if (i.hasData) {
            final List<Widget> listCardsUser = <Widget>[];
            for (service in i.data) {
              Widget temp = WidgetHome(
                id: service['id'].toString(),
                name: service["name"],
                email: service["email"],
                phone: service["phone"],
              );
              listCardsUser.add(temp);
              temp = null;
            }
            return Column(
              children: <Widget>[
                Expanded(
                  child: ListView(
                    children: listCardsUser,
                  ),
                ),
              ],
            );
          }
          return Text("Sin conexion");
        });
  }
}
