import 'package:flutter/material.dart';

class ButtonsIcons extends StatefulWidget {
  const ButtonsIcons({super.key});

  @override
  State<ButtonsIcons> createState() => _ButtonsIconsState();
}

class _ButtonsIconsState extends State<ButtonsIcons> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 50,
      ),
      // #1
      ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(), padding: const EdgeInsets.all(30)),
        child: const Icon(
          Icons.add,
          size: 50,
        ),
        onPressed: () {},
      ),
      const SizedBox(
        height: 50,
      ),
      // #2
      MaterialButton(
        shape: const CircleBorder(),
        color: Colors.red,
        padding: const EdgeInsets.all(20),
        onPressed: () {},
        child: const Icon(
          Icons.star,
          size: 50,
          color: Colors.yellow,
        ),
      ),
      const SizedBox(
        height: 50,
      ),
      // #3
      ClipOval(
        child: Material(
          color: Colors.blue,
          child: InkWell(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Icon(
                Icons.plus_one,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 50,
      ),
      // #4
      CircleAvatar(
        radius: 50,
        backgroundColor: Colors.amber,
        child: IconButton(
            color: Colors.black,
            padding: const EdgeInsets.all(20),
            iconSize: 50,
            icon: const Icon(Icons.shop),
            onPressed: () {
              // do something
            }),
      ),
      const SizedBox(
        height: 50,
      ),
      // #5
      Ink(
        decoration:
            const ShapeDecoration(shape: CircleBorder(), color: Colors.purple),
        child: IconButton(
          icon: const Icon(Icons.arrow_back),
          iconSize: 30,
          color: Colors.white,
          onPressed: () {},
        ),
      )
    ]);
  }
}
