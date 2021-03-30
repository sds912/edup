import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    final List<Map> menus = [
      {
        "id": 1,
        "name": "Scanner",
        "icon": "assets/icons/scanner.png",
        "color": 0XFF28D6C0
      },
      {
        "id": 2,
        "name": "Carte de visite",
        "icon": "assets/icons/card.png",
        "color": 0XFFF12B7E
      },
      {
        "id": 3,
        "name": "Mon CV",
        "icon": "assets/icons/resume.png",
        "color": 0XFFF9E22C
      },
      {
        "id": 4,
        "name": "Mes Documents",
        "icon": "assets/icons/folder.png",
        "color": 0XFFF89221
      }
    ];

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                height: h * .4,
                color: Color(0XFFF89221),
              ),
              Padding(padding: EdgeInsets.only(top: h * .05)),
              Container(
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                        itemCount: menus.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return InkWell(
                            onTap: () {
                              switch (menus[index]['id']) {
                                case 3:
                                  Navigator.pushNamed(context, 'resume');
                                  break;
                                default:
                              }
                            },
                            child: Container(
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ImageIcon(
                                    AssetImage(menus[index]['icon']),
                                    size: 36.0,
                                    color: Color(0XFFFFFFFF),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 20.0)),
                                  Text(
                                    menus[index]["name"],
                                    style: TextStyle(color: Color(0XFFFFFFFF)),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Color(menus[index]['color']),
                                  borderRadius: BorderRadius.circular(15)),
                            ),
                          );
                        }),
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
