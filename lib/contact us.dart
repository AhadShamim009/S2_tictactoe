
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Contactus extends StatefulWidget {
  @override
  _ContactusState createState() => _ContactusState();
}

class _ContactusState extends State<Contactus>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Us"),
        actions: [
          InkWell(
              onTap: () {
                SystemChannels.platform
                    .invokeMethod('SystemNavigator.pop');
              },
              child: Icon(Icons.cancel_outlined)),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Center(
        child: Text("TIC-TAC-TOE\nThis is a small kid game for entertainment, ranging from basic logics.\n\nAhad Shamim\nSP17-BCS-030 ",textAlign: TextAlign.center,),
      ), //<- place where the image appears
    );
  }
}
