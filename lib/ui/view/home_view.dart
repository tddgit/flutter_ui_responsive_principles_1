import 'package:flutter/material.dart';
import 'package:flutter_ui_responsive_principles_1/ui/base_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                height: 150,
                margin: const EdgeInsets.all(50),
                color: Colors.blue,
                child: BaseWidget(builder: (context, sizingInformation) {
                  return Text(
                    sizingInformation.toString(),
                  );
                }),
              ),
              Text(sizingInformation.toString()),
            ],
          ),
        ),
      );
    });
  }
}
