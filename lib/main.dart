import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'app.dart';
import 'store.dart';
import 'models/app_state.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: App(),
    );
  }
}
