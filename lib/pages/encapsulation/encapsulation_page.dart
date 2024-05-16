import 'package:dart_oop/pages/encapsulation/Encapsulation_strings.dart';
import 'package:dart_oop/widgets/syntex_list_view.dart';
import 'package:flutter/material.dart';

class EncapsulationPage extends StatelessWidget {
  const EncapsulationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Encapsulation Examples"),
        centerTitle: true,
      ),
      body: const SyntexListView(
        codesList: encapsulationCode,
        titlesList: encapsulations,
      ),
    );
  }
}
