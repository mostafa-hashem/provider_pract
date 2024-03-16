import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providr_prac/helper_methods.dart';
import 'package:providr_prac/provider/app_provider.dart';
import 'package:providr_prac/widgets/details_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyAppProvider>(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('GDSC'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => DetailsCard(
                  dataModel: provider.data[index],
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 8,
                ),
                itemCount: provider.data.length,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 26,
        ),
        onPressed: () {
          showDataSheet(context);
        },
      ),
    ));
  }
}
