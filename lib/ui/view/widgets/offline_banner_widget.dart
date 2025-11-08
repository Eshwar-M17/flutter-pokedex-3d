import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:pokedex_3d/ui/providers/connectivity_notifier.dart';

class OfflineBannerWidget extends ConsumerStatefulWidget {
  const OfflineBannerWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OfflineBannerWidgetState();
}

class _OfflineBannerWidgetState extends ConsumerState<OfflineBannerWidget> {
  bool isLoading = false;
  bool isConnected = false;
  double animatedWidth = 26;
  @override
  Widget build(BuildContext context) {
    final statusState = ref.watch(connectivityStatusProvider);

    statusState.when(
      data: (InternetStatus status) {
        switch (status) {
          case InternetStatus.connected:
            isConnected = true;
            Future.delayed(Duration(seconds: 4)).then(
              (_) => setState(() {
                animatedWidth = 0;
              }),
            );
            break;
          case InternetStatus.disconnected:
            animatedWidth = 26;
            isConnected = false;
            break;
        }
      },
      error: (Object error, StackTrace stackTrace) {},
      loading: () {
        isLoading = true;
      },
    );

    final lable = Text(
      isConnected ? 'Back Online' : "Offline mode: viewing cached Pokémon.",
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.labelSmall!.copyWith(),
    );

    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      width: double.infinity,
      height: animatedWidth,

      decoration: BoxDecoration(
        color: isConnected ? Colors.lightGreen : Colors.redAccent,
      ),
      padding: const EdgeInsets.all(4),
      child: isLoading ? CircularProgressIndicator() : lable,
    );
  }
}
