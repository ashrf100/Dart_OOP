import 'package:dart_oop/core/Encapsulation_strings.dart';
import 'package:dart_oop/core/constructors_strings.dart';
import 'package:dart_oop/core/inheritance_strings.dart';
import 'package:dart_oop/core/polymorphism_strings.dart';
import 'package:dart_oop/widgets/keyword_list_view.dart';
import 'package:dart_oop/widgets/syntex_list_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> data = [
      constructors,
      encapsulation,
      inheritance,
      polymorphism,
    ];
    List<String> titles = [
      "Constructors",
      "Encapsulation",
      "Inheritance",
      "Polymorphism"
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Study Topics'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SyntexListView(
                          codesList: data[index]["code"],
                          titlesList: data[index]["title"],
                          appBarTitle: titles[index])),
                );
              },
              leading: Text(
                index.toString(),
                style: const TextStyle(fontSize: 14),
              ),
              title: Text(
                titles[index],
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
              subtitle: const Text(
                "Tap For Examples",
                style: TextStyle(fontSize: 11),
              ),
              trailing: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => KeyWordsListView(
                              items: data[index]["keywords"],
                              appBarTitle: titles[index],
                            )),
                  );
                },
                splashColor: Colors.deepPurple.withAlpha(30),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Key\n Words",
                      style: TextStyle(
                        fontSize: 11,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                    ),
                  ),
                ),
              ),
            ));
          },
        ),
      ),
    );
  }
}
