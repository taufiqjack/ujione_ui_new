import 'package:dotted_border/dotted_border.dart';
import 'package:e_learning_uji/data/data%20_new.dart';
import 'package:e_learning_uji/ui/view/index_view.dart';
import 'package:e_learning_uji/ui/widget/draggable_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DragDropViewLatest extends StatefulWidget {
  const DragDropViewLatest({Key? key}) : super(key: key);

  @override
  _DragDropViewLatestState createState() => _DragDropViewLatestState();
}

class _DragDropViewLatestState extends State<DragDropViewLatest> {
  bool? gameover;

  var birdImageList = allBirds;
  List<BirdsWithText>? birdTextList = [];

  @override
  void initState() {
    // INITIATE TEXT BOX
    for (var element in birdImageList) {
      BirdsWithText birdItem = BirdsWithText(
        name: element.name,
        bird: null,
      );
      birdTextList!.add(birdItem);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black,
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: InkWell(
              child: const Icon(
                Icons.arrow_back_sharp,
                color: Colors.black,
              ),
              onTap: () async {
                setState(() {});
                await Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const IndexView()),
                    (route) => false);
              }),
          title: const Text(
            'Matching Images',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(children: [
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Pasangkan gambar dibawah ini:',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  imgList(
                    context,
                    birds: birdImageList,
                    // onAccept: (data) => setState(() {
                    // }),
                  ),
                  Column(
                    children: List.generate(birdTextList!.length, (index) {
                      return _oldTarget(
                        context,
                        text: birdTextList![index].name,
                        birds: birdTextList![index].bird,
                        birdName: [],
                        onAccept: (data) => setState(() {
                          if (birdTextList![index].bird == null) {
                            for (var element in birdTextList!) {
                              if (element.bird != null &&
                                  element.bird!.name == data.name) {
                                element.bird = null;
                              }
                            }

                            birdTextList![index].bird = data;
                            birdImageList
                                .removeWhere((bird) => bird.name == data.name);
                          } else {
                            // First check if the index is not same (same position as index)
                            if (birdTextList![index].bird != data) {
                              // Remove from image list that contains the moved item
                              for (var element in birdImageList.toList()) {
                                if (element == data) {
                                  birdImageList.remove(element);
                                }
                              }

                              // Change the new value from moved item (case moving from target box to target box)
                              for (int i = 0; i < birdTextList!.length; i++) {
                                if (birdTextList![i].bird != null &&
                                    birdTextList![i].bird!.name == data.name) {
                                  birdTextList![i].bird =
                                      birdTextList![index].bird!;
                                  break;
                                }
                              }

                              // Checking if the moved item not same as the target item then remove the duplicate item (case moving from target box to target box)
                              if (birdTextList![index].bird != null &&
                                  birdTextList![index].bird!.name !=
                                      data.name) {
                                // Add old target to image list
                                birdImageList.add(birdTextList![index].bird!);

                                // Change the target value to moved value
                                birdTextList![index].bird = data;

                                // Remove the duplicate item from list
                                for (var element in birdImageList.toList()) {
                                  for (var text in birdTextList!) {
                                    if (text.bird == element) {
                                      birdImageList.remove(element);
                                    }
                                  }
                                }
                              } else {
                                birdTextList![index].bird = data;
                              }
                            }
                          }
                        }),
                      );
                    }),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: null,
                child: const Text(
                  'Selanjutnya',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  Colors.green,
                )),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget imgList(
    BuildContext context, {
    required List<Birds> birds,
    // required DragTargetAccept<Birds> onAccept,
  }) =>
      DragTarget<Birds>(
        builder: (context, cd, rj) => Column(
          children: [
            ...birds
                .map((bird) => Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                        height: 70,
                        width: 100,
                        child: DraggableWidget(bird: bird))))
                .toList()
              ..shuffle()
          ],
        ),
        onWillAccept: (data) => true,
        onAccept: (data) {},
      );

  Widget _oldTarget(
    BuildContext context, {
    String? text,
    Birds? birds,
    required List<String> birdName,
    required DragTargetAccept<Birds> onAccept,
  }) =>
      Container(
        padding: const EdgeInsets.only(top: 20),
        child: DottedBorder(
          borderType: BorderType.RRect,
          strokeWidth: 2,
          radius: const Radius.circular(5),
          child: Container(
            height: 70,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey.shade400),
            child: DragTarget<Birds>(
              builder: (context, cd, rj) => Stack(
                children: [
                  Center(
                    child: oldTText(text!),
                  ),
                  (birds != null)
                      ? DraggableWidget(
                          bird: birds,
                        )
                      : const SizedBox()
                ],
              ),
              onWillAccept: (data) => true,
              onAccept: (data) {
                onAccept(data);
              },
            ),
          ),
        ),
      );

  Widget target(
    BuildContext context, {
    // List<ListName>? listName,
    String? text,
    required List<Birds> birds,
    required List<String> birdsName,
    required DragTargetAccept<Birds> onAccept,
  }) =>
      Padding(
        padding: const EdgeInsetsDirectional.only(top: 10),
        child: SingleChildScrollView(
          child: SizedBox(
            height: 550,
            width: 120,
            child: Stack(children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      height: 80,
                      width: 100,
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        strokeWidth: 2,
                        radius: const Radius.circular(5),
                        color: Colors.grey.shade400,
                        child: const Center(
                          child: Text(
                            'Merpati',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      height: 80,
                      width: 100,
                      child: DottedBorder(
                          borderType: BorderType.RRect,
                          strokeWidth: 2,
                          radius: const Radius.circular(5),
                          color: Colors.grey.shade400,
                          child: const Center(
                            child: Text(
                              'Perkutut',
                              style: TextStyle(color: Colors.black),
                            ),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                        height: 80,
                        width: 100,
                        child: DottedBorder(
                            borderType: BorderType.RRect,
                            strokeWidth: 2,
                            radius: const Radius.circular(5),
                            color: Colors.grey.shade400,
                            child: const Center(
                              child: Text(
                                'Pipit',
                                style: TextStyle(color: Colors.black),
                              ),
                            ))),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: SizedBox(
                      height: 80,
                      width: 100,
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        strokeWidth: 2,
                        radius: const Radius.circular(5),
                        color: Colors.grey.shade400,
                        child: const Center(
                          child: Text(
                            'Cenderawasih',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              DragTarget<Birds>(
                builder: (context, cd, rj) => ReorderableListView(
                  onReorder: (int oldIndex, int newIndex) {
                    setState(() {
                      if (newIndex < birds.length) newIndex = birds.length;
                      if (oldIndex < newIndex) newIndex--;

                      Birds bird = birds[oldIndex];
                      birds.remove(bird);
                      birds.insert(newIndex, bird);
                    });
                  },
                  children: [
                    //    Column(
                    // children: [
                    //   // Center(
                    //   //   child: buildText(text!),
                    //   // ),
                    buildText(text!),

                    ...birds
                        .map((bird) => Padding(
                            padding: const EdgeInsetsDirectional.only(top: 10),
                            child: DraggableWidget(bird: bird)))
                        .toList(),
                  ],
                ),
                onWillAccept: (data) => true,
                onAccept: (data) {
                  onAccept(data);
                },
                onMove: (details) => true,
              ),
            ]),
          ),
        ),
      );

  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1000));
  }

  Widget oldTText(String text) => Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      );

  Widget buildText(String text) => Text(
        text,
        style: const TextStyle(
          color: Colors.transparent,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      );
}
