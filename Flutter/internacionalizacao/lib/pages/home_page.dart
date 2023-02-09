import 'package:flutter/material.dart';
import 'package:internacionalizacao/enums/aminoacidos_enum.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';
import '../generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //child: Text (AppLocalizations.of(context)!.helloWorld),
        child: Column(children: [
          //https://localizely.com/flutter-arb/
          //https://api.flutter.dev/flutter/intl/DateFormat-class.html

          Text(getEnumString(AminoacidosEnum.HELLOWORD)),
          Text(getEnumString(AminoacidosEnum.TITULO)),

          Text(Intl.message(AminoacidosEnum.HELLOWORD.value)),
          Text(Intl.message(AminoacidosEnum.HELLOWORD.value,
              name: AminoacidosEnum.HELLOWORD.value)),

          Text(
              S.of(context).textWithPlaceHolders("Pedroso", 'Thiago Cristian')),
          Text(S.of(context).pageNotificationsCount(0)),
          Text(S.of(context).pageNotificationsCount(1)),
          Text(S.of(context).gender("male")),
          Text(S.current.pageHomeBalance(1234567890, DateTime.now())),
        ]),
      ),
    );
  }

  String getEnumString(AminoacidosEnum enumValue) {
    switch (enumValue) {
      case AminoacidosEnum.TITULO:
        return Intl.message("AminoacidosEnum.TITULO", name: "title");
        break;
      case AminoacidosEnum.HELLOWORD:
        return Intl.message("AminoacidosEnum.HELLOWORD", name: "helloWorld");
        break;
    }
  }
}
