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
  bool isLoading = true;
  bool isConnected = false;
  double animatedHight = 26;
  @override
  Widget build(BuildContext context) {
    final statusState = ref.watch(connectivityStatusProvider);

    statusState.when(
      data: (InternetStatus status) {
        switch (status) {
          case InternetStatus.connected:
            isLoading = false;
            isConnected = true;
            Future.delayed(Duration(seconds: 4)).then(
              (_) => setState(() {
                animatedHight = 0;
              }),
            );
            break;
          case InternetStatus.disconnected:
            isLoading = false;
            animatedHight = 26;
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
      height: animatedHight,

      decoration: BoxDecoration(
        color: isConnected ? Colors.lightGreen : Colors.redAccent,
      ),
      padding: const EdgeInsets.all(4),
      child: isLoading
          ? Center(
              child: SizedBox(
                width: 16,
                height: 16,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            )
          : lable,
    );
  }
}
