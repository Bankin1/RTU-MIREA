import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class WhoIs extends StatelessWidget{
  const WhoIs({super.key});

  @override
  Widget build(BuildContext context){
    if (Platform.isAndroid) return const Text ("Android");
    if (Platform.isWindows) return const Text ("Windows");
    if (kIsWeb) return const Text ("Web");
    return const Text ("IDN");
  }
}


