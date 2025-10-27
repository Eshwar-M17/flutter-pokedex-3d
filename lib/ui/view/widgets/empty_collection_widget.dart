import 'package:flutter/material.dart';

class EmptyCollectionWidget extends StatelessWidget {
  const EmptyCollectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'PokeDex 3D',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(height: 100),
              Image.asset('assets/images/pokeball_icon.png', width: 200),
              const Text(
                "No Models Yet",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(height: 10),
              const Text(
                "Connect to the internet to download \n Pokémon models",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
              const SizedBox(height: 20),
              FilledButton(
                style: const ButtonStyle(
                  shadowColor: WidgetStatePropertyAll(Colors.black),
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                ),
                onPressed: () {},

                child: const Text(
                  'Connect',

                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
