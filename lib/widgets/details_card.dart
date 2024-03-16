import 'package:flutter/material.dart';
import 'package:providr_prac/models/data_model.dart';
import 'package:providr_prac/widgets/data_row.dart';

class DetailsCard extends StatelessWidget {
  final DataModel dataModel;

  const DetailsCard({super.key, required this.dataModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 16,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DetailsRow(label: 'Name', details: dataModel.name),
            const SizedBox(
              height: 12,
            ),
            DetailsRow(label: 'E-mail', details: dataModel.email),
            const SizedBox(
              height: 12,
            ),
            DetailsRow(label: 'ID', details: dataModel.id),
            const SizedBox(
              height: 12,
            ),
            DetailsRow(label: 'Phone number', details: dataModel.phoneNumber),
          ],
        ),
      ),
    );
  }
}
