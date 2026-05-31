import 'package:contador_gabriel/utils/colors_utils.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsUtils.red,
      appBar: AppBar(
        title: const Text(
          "Contador de Baggets",
          style: TextStyle(color: ColorsUtils.grey),
        ),
        actions: [
          Image(image: AssetImage("assets/kasane_teto_0.png"))
        ],
        backgroundColor: ColorsUtils.purple,
      ),
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: ColorsUtils.grey,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 55),
              child: Center(
                child: Column(
                  children: [
                    //const Text("Contador", style: TextStyle(color: ColorsUtils.purple, fontSize: 20),),
                    const Spacer(),
                    const Text(
                      "0",
                      style: TextStyle(color: ColorsUtils.purple, fontSize: 50),
                    ),
                    const Spacer(),
                    Image(image: AssetImage('assets/bagget_0.png')),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          label: const Text('Suma'),
                          icon: const Icon(Icons.add),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorsUtils.purple,
                            foregroundColor: ColorsUtils.grey,
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          label: const Text('Resta'),
                          icon: const Icon(Icons.remove),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorsUtils.purple,
                            foregroundColor: ColorsUtils.grey,
                          ),
                        ),
                      ],
                    ),
                    OutlinedButton.icon(
                      onPressed: () {},
                      label: const Text("Reset"),
                      icon: const Icon(Icons.restart_alt),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: ColorsUtils.purple,
                        side: const BorderSide(color: ColorsUtils.purple),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
            const Positioned(
              top: 50,
              left: 0,
              child: Image(
                image: AssetImage('assets/sticker_1.png'),
                height: 100,
                width: 100,
              ),
            ),
            const Positioned(
              top: 50,
              right: 0,
              child: Image(
                image: AssetImage('assets/sticker_2.png'),
                height: 100,
                width: 100,
              ),
            ),
            const Positioned(
              bottom: 50,
              right: 0,
              child: Image(
                image: AssetImage('assets/sticker_3.png'),
                height: 100,
                width: 100,
              ),
            ),
            const Positioned(
              bottom: 50,
              left: 0,
              child: Image(
                image: AssetImage('assets/sticker_4.png'),
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: ColorsUtils.purple,
        foregroundColor: ColorsUtils.pink,
        child: const Icon(Icons.info),
      ),
    );
  }
}
