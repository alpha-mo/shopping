import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListTileSlidable extends StatelessWidget {
  const ListTileSlidable({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: Key('${child.key.toString()}_slidable'),

      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.25,
        children: [
          SlidableAction(
            onPressed: (_) {},
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: null,
          ),
          SlidableAction(
            onPressed: (_) {},
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.white,
            icon: Icons.add_box,
            label: null,
          ),
        ],
      ),
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        extentRatio: 0.25,
        dismissible: DismissiblePane(
          onDismissed: () {
            print('dismissed');
          },
        ),
        children: [
          SlidableAction(
            onPressed: (_) {},
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            icon: Icons.save,
            label: null,
          ),
        ],
      ),
      child: child,
    );
  }
}
