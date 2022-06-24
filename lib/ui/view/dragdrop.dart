import 'package:drag_and_drop_lists/drag_and_drop_lists.dart';
import 'package:flutter/material.dart';

class DragDrop extends StatefulWidget {
  const DragDrop({Key? key}) : super(key: key);

  @override
  _DragDropState createState() => _DragDropState();
}

class _DragDropState extends State<DragDrop> {
  List<DragAndDropList>? _content;

  @override
  void initState() {
    _content = List.generate(2, (index) {
      return DragAndDropList(
        header: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 5),
                  child: Text('Header $index'),
                )
              ],
            )
          ],
        ),
        children: <DragAndDropItem>[
          DragAndDropItem(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 12,
            ),
            child: Text('Sub $index.1'),
          )),
          DragAndDropItem(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12,
                  ),
                  child: Text('Sub $index.2'),
                ),
              ],
            ),
          ),
          DragAndDropItem(
              child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 12,
            ),
            child: Text('Sub $index.3'),
          )),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Drag n Drop'),
      ),
      body: DragAndDropLists(
        children: _content!,
        onItemReorder: _onItemOrder,
        onListReorder: _onListReorder,
        listPadding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        itemDivider: const Divider(
          thickness: 2,
          height: 2,
          color: Color.fromARGB(255, 243, 242, 248),
        ),
      ),
    );
  }

  _onItemOrder(
      int oldItemIndex, int oldLisIndex, int newItemIndex, int newLIstIndex) {
    setState(() {
      var movedItem = _content![oldItemIndex].children.removeAt(oldItemIndex);
      _content![newLIstIndex].children.insert(newItemIndex, movedItem);
    });
  }

  _onListReorder(
    int oldListIndex,
    int newListIndex,
  ) {
    setState(() {
      var movedList = _content!.removeAt(oldListIndex);
      _content!.insert(newListIndex, movedList);
    });
  }
}
