import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ojail_shopping/presentation/widgets/text.dart';
import '../../../providers/dummy_provider.dart';
import './o_list_tile.dart';

class OListView extends ConsumerWidget {
  const OListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(dummyProvider);
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
