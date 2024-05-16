import 'package:dart_oop/pages/constructors/constructors_strings.dart';
import 'package:dart_oop/widgets/syntex_list_view.dart';
import 'package:flutter/material.dart';

class ConstructorsPage extends StatelessWidget {
  const ConstructorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Constructors Examples"),
        centerTitle: true,
      ),
      body: const SyntexListView(
        codesList: constructorsCode,
        titlesList: constructors,
      ),
    );
  }
}
