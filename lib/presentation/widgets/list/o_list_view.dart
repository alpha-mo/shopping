import 'package:flutter/material.dart';
import 'package:ojail_shopping/domain/entities/shopping_item_entity.dart';
import 'package:ojail_shopping/presentation/widgets/text.dart';
import './o_list_tile.dart';

class OListView extends StatelessWidget {
  const OListView({super.key, required this.items});
  final List<ShoppingItemEntity> items;

  @override
  Widget build(BuildContext context) {
    if (items.isEmpty) {
      return Center(child: OText('Empty list', type: TextType.headline));
    }
    return ListView.separated(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return OListTile(item: items[index]);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 5);
      },
    );
  }
}
