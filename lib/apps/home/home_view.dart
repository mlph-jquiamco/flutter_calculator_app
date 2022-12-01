import 'package:flutter/material.dart';
import 'package:flutter_convert_to_hook_widget/apps/home/home_view_model.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

T useChangeNotifierListenable<T extends ChangeNotifier>(T data) {
  final state = useState<T>(data);
  return useListenable(state.value);
}

class HomeView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // Change notifier
    final homeChangeNotifier =
        useChangeNotifierListenable(HomeChangeNotifier());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Training Convert to Hook Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${homeChangeNotifier.increment}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _incrementCounter(homeChangeNotifier);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // When floating button is clicked, it will increment by one
  Future<void> _incrementCounter(HomeChangeNotifier homeChangeNotifier) async {
    homeChangeNotifier.reloadState();
  }
}
