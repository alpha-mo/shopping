import 'package:flutter/material.dart';
import 'package:ojail_shopping/domain/entities/shopping_item_entity.dart';
import 'package:ojail_shopping/domain/repositories/dummy.dart';
import 'package:ojail_shopping/presentation/widgets/buttons/button.dart';
import '../widgets/dialog/add_edit_item/add_edit_item_dialog.dart';
import '../widgets/list/o_list_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final TextEditingController _itemNameController = TextEditingController();
  final TextEditingController _qtyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final List<ShoppingItemEntity> dummyData = Dummy.dummyData;
    String itemName = '';
    String qty = '';
    void openFormDialog() async {
      await showDialog(
        context: context,
        builder: (context) => AddEditItemDialog(
          itemNameController: _itemNameController,
          qtyController: _qtyController,
        ),
      );
      itemName = _itemNameController.text;
      qty = _qtyController.text;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Saved: $itemName - $qty")));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Ojail Shopping'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Expanded(child: OListView(items: dummyData)),
              SizedBox(height: 20),
              OButton('Open Dialog', onPressed: openFormDialog),
            ],
          ),
        ),
      ),
    );
  }
}
