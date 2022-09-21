import 'package:e_learning_uji/core/viewmodels/products_viewmodel.dart';
import 'package:e_learning_uji/ui/view/base_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multi_select_items/flutter_multi_select_items.dart';

class MultipleChoiceView extends StatefulWidget {
  const MultipleChoiceView({Key? key}) : super(key: key);

  @override
  State<MultipleChoiceView> createState() => _MultipleChoiceViewState();
}

class _MultipleChoiceViewState extends State<MultipleChoiceView> {
  final MultiSelectController _controller = MultiSelectController();
  @override
  Widget build(BuildContext context) {
    return BaseView<ProductsViewModel>(
      onModelReady: (data) {
        data.getProduct(context);
      },
      builder: (context, data, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Multiple Choice Test'),
          centerTitle: true,
        ),
        body: data.products == null
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 10, right: 10, bottom: 10),
                child: MultiSelectCheckList(
                  listViewSettings: const ListViewSettings(
                      physics: AlwaysScrollableScrollPhysics()),
                  maxSelectableCount: 3,
                  textStyles: const MultiSelectTextStyles(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.white)),
                  controller: _controller,
                  animations: const MultiSelectAnimations(
                      decorationAnimationCurve: Curves.easeInOut),
                  items: List.generate(
                      data.products!.length,
                      (index) => CheckListCard(
                          checkBoxBorderSide:
                              const BorderSide(color: Colors.black),
                          value: data.products![index].id,
                          textStyles: const MultiSelectItemTextStyles(
                              textStyle: TextStyle(color: Colors.black)),
                          title: Text('${data.products![index].nama}'),
                          selectedColor: Colors.white,
                          checkColor: Colors.green,
                          decorations: MultiSelectItemDecorations(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                            ),
                            selectedDecoration:
                                BoxDecoration(color: Colors.green.shade300),
                          ))),
                  onChange: (allSelected, selectedItem) {
                    if (kDebugMode) {
                      print(allSelected);
                      print(_controller);
                    }
                  },
                  onMaximumSelected: (allSelected, selectedItem) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Maksimal hanya 3 pilihan')));
                  },
                )
                // child: ListView.builder(
                //   shrinkWrap: true,
                //   itemCount: data.products!.length,
                //   itemBuilder: (context, index) {
                //     return Padding(
                //       padding: const EdgeInsets.only(bottom: 10),
                //       child: Text('${data.products![index].nama}'),
                //     );
                //   },
                // ),

                ),
      ),
    );
  }
}
