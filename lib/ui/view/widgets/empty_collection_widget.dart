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
              const SizedBox(height: 100),
              Image.asset('assets/images/pokeball_icon.png', width: 200),
              Text(
                "No Models Yet",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight:FontWeight.bold ),
                // style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(height: 10),
              Text(
                "Connect to the internet to download \n Pokémon models",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelLarge,
                // style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
