import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

class SyntexListView extends StatelessWidget {
  final List<String> codesList;
  final List<String> titlesList;
  final String appBarTitle;

  const SyntexListView({
    super.key,
    required this.codesList,
    required this.titlesList,
    required this.appBarTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: titlesList.length,
        itemBuilder: (BuildContext context, int index) {
          final SyntaxView syntaxView = SyntaxView(
            code: codesList[index],
            syntax: Syntax.DART,
            syntaxTheme: SyntaxTheme.vscodeDark(),
            fontSize: 12.0,
            withZoom: true,
            withLinesCount: true,
            expanded: false,
          );
          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 6.0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.brush_sharp),
                      Text(
                        titlesList[index],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Icon(Icons.brush_sharp),
                    ],
                  ),
                ),
                const Divider(),
                syntaxView,
              ],
            ),
          );
        },
      ),
    );
  }
}
