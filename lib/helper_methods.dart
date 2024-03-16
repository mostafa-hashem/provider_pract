import 'package:flutter/material.dart';
import 'package:providr_prac/widgets/data_bottom_sheet.dart';

void showDataSheet(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) => const DataBottomSheet(),
  );
}

String? validateGeneral(String? value, String label){
 if( value == null || value.isEmpty){
   return 'Please enter $label';
 }
 return null;
}
