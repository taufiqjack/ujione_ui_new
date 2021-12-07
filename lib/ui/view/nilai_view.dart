import 'package:e_learning_uji/ui/view/index_view.dart';
import 'package:flutter/material.dart';

class NilaiView extends StatefulWidget {
  const NilaiView({Key? key}) : super(key: key);

  @override
  _NilaiViewState createState() => _NilaiViewState();
}

class _NilaiViewState extends State<NilaiView> {
  bool onClick = false;
  final List<bool> _onClick = List.generate(4, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Nilai',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: InkWell(
            child: const Icon(
              Icons.keyboard_backspace_rounded,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const IndexView(),
                  ));
            },
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, right: 24, left: 24),
        child: Container(
          padding: const EdgeInsets.only(right: 10, left: 10),
          height: 50,
          width: double.infinity,
          color: const Color(0xFFA4DFBF),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _onClick[0] = !_onClick[0];
                  });
                },
                child: const Text(
                  'Ujian',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all((_onClick[0]
                        ? Colors.transparent
                        : const Color(0xFF32B770)))),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _onClick[1] = !_onClick[1];
                  });
                },
                child: const Text(
                  'Tugas',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(_onClick[1]
                        ? const Color(0xFF32B770)
                        : Colors.transparent)),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _onClick[2] = !_onClick[2];
                  });
                },
                child: const Text(
                  'Kuis',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all((_onClick[2]
                      ? const Color(0xFF32B770)
                      : Colors.transparent)),
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _onClick[3] = !_onClick[3];
                  });
                },
                child: const Text(
                  'Total',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all((_onClick[3]
                        ? const Color(0xFF32B770)
                        : Colors.transparent))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
