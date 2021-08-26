import 'package:flutter/material.dart';

import 'vista_com_subCa/grocery_store_home.dart';

class MainGroceryStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: GroceryStoreHome(),
    );
  }
}
