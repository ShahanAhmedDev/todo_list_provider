import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyNewApp());

class MyNewApp extends StatelessWidget {
  // final String data = 'Yo bro you fine';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(create: (context) => Data(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: (
                MyTextField()
            ),
          ),
          body: Level2(),
        ),
      ),
    );
  }
}

class Level2 extends StatelessWidget {
  const Level2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextEditingField(),
      ],
    );
  }
}


class Level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyTextField(
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        Provider.of<Data>(context).data,
      ),
    );
  }
}

class TextEditingField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text){
        Provider.of<Data>(context,listen: false).update(text);
      },

    );
  }
}

class Data extends ChangeNotifier{
  String data = 'Hey guys wassup';

  String update(String newdata) {
    if(newdata == data){
      notifyListeners();
      return data;
    }
    notifyListeners();
    return data = newdata;

  }

}