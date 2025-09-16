import 'package:flutter/material.dart';
import 'package:ojail_shopping/domain/entities/shopping_item_entity.dart';
import 'package:ojail_shopping/presentation/widgets/list/list_tile_slidable.dart';
import 'package:ojail_shopping/presentation/widgets/text.dart';

class OListTile extends StatelessWidget {
  const OListTile({super.key, required this.item});
  final ShoppingItemEntity item;

  @override
  Widget build(BuildContext context) {
    return ListTileSlidable(
      child: ListTile(
        key: Key(item.uid),
        leading: Icon(Icons.arrow_right),
        title: OText(item.name, type: TextType.title),
        trailing: Row(
          mainAxisSize:
              MainAxisSize.min, // Use this to keep the Row from expanding
          children: [
            Text('2', style: TextStyle(fontSize: 16)),
            SizedBox(width: 10),
            IconButton(
              icon: Icon(Icons.add_circle_outline),
              onPressed: () {
                // Add logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
