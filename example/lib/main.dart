import 'package:architecture_utils/basic_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final noSpaces = RemoveSpaces().call('A string with spaces');
          print(noSpaces);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class RemoveSpaces extends BasicUsecase<String, String> {
  @override
  Future<String> call(String input) async {
    return input.replaceAll(' ', '');
  }
}
