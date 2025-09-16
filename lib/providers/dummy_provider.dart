import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ojail_shopping/domain/entities/shopping_item_entity.dart';
import 'package:ojail_shopping/domain/repositories/dummy.dart';

class DummyProvider extends Notifier<List<ShoppingItemEntity>> {
  final List<ShoppingItemEntity> _dummyData = Dummy.dummyData;

  @override
  List<ShoppingItemEntity> build() {
    return _dummyData;
  }

  void addItem(ShoppingItemEntity item) {
    state = [...state, item];
  }

  void removeItem(ShoppingItemEntity item) {
    state = state.where((element) => element.uid != item.uid).toList();
  }

  void updateItem(ShoppingItemEntity item) {
    state = state.map((element) {
      if (element.uid == item.uid) {
        return item;
      }
      return element;
    }).toList();
  }
}

final dummyProvider = NotifierProvider<DummyProvider, List<ShoppingItemEntity>>(
  () => DummyProvider(),
);
