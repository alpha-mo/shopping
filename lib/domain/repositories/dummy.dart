import 'package:ojail_shopping/domain/entities/shopping_item_entity.dart';

class Dummy {
  static List<ShoppingItemEntity> dummyData = [
    ShoppingItemEntity(uid: '1', name: 'mjölk', qty: 2, completed: false),
    ShoppingItemEntity(uid: '2', name: 'bröd', qty: 1, completed: true),
    ShoppingItemEntity(uid: '3', name: 'smör', qty: 1, completed: false),
    ShoppingItemEntity(uid: '4', name: 'ost', qty: 1, completed: false),
  ];
}
