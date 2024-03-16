import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providr_prac/helper_methods.dart';
import 'package:providr_prac/models/data_model.dart';
import 'package:providr_prac/provider/app_provider.dart';

class DataBottomSheet extends StatefulWidget {
  const DataBottomSheet({super.key});

  @override
  State<DataBottomSheet> createState() => _DataBottomSheetState();
}

class _DataBottomSheetState extends State<DataBottomSheet> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final idController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyAppProvider>(context);
    return Padding(
      padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              validator: (value) => validateGeneral(value, 'name'),
              controller: nameController,
              decoration: const InputDecoration(
                  label: Text('Name'), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              validator: (value) => validateGeneral(value, 'email'),
              controller: emailController,
              decoration: const InputDecoration(
                  label: Text('E-mail'), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              validator: (value) => validateGeneral(value, 'id'),
              controller: idController,
              decoration: const InputDecoration(
                  label: Text('ID'), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 12,
            ),
            TextFormField(
              validator: (value) => validateGeneral(value, 'phone number'),
              controller: phoneNumberController,
              decoration: const InputDecoration(
                  label: Text('Phone number'), border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 18,
            ),
            TextButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  provider.addData(DataModel(
                      name: nameController.text,
                      email: emailController.text,
                      id: idController.text,
                      phoneNumber: phoneNumberController.text));
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  }
                }
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
              ),
              child: const Text(
                'ADD',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
