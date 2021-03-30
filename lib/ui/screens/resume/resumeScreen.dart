import 'package:edup/ui/screens/personal_details/PersonalDetailsScreen.dart';
import 'package:flutter/material.dart';

class ResumeScreen extends StatefulWidget {
  @override
  _ResumeScreenState createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  final List<Map> sections = [
    {
      "id": 1,
      "name": "Informations Personnelles",
      "icon": Icon(Icons.person, color: Color(0XFF28D6C0))
    },
    {
      "id": 2,
      "name": "Diplomes et Formations",
      "icon": Icon(Icons.cast_for_education, color: Color(0XFF28D6C0))
    },
    {
      "id": 3,
      "name": "Expériences",
      "icon": Icon(
        Icons.work,
        color: Color(0XFF28D6C0),
      )
    },
    {
      "id": 4,
      "name": "Compétences",
      "icon": Icon(
        Icons.beenhere_outlined,
        color: Color(0XFF28D6C0),
      )
    },
    {
      "id": 5,
      "name": "Langues",
      "icon": Icon(
        Icons.language_sharp,
        color: Color(0XFF28D6C0),
      )
    },
    {
      "id": 5,
      "name": "Passe-temps",
      "icon": Icon(
        Icons.games,
        color: Color(0XFF28D6C0),
      )
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mon CV'),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: sections.length,
          itemBuilder: (BuildContext context, index) => Card(
            child: InkWell(
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PersonalDetailsScreen()))
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    sections[index]['icon'],
                    Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
                    Text(sections[index]['name'])
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
