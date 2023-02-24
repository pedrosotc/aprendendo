import 'package:flutter/material.dart';
import 'package:nao_use_listview/tipo_list_view.dart';

class TipoListViewState extends State<TipoListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lista de visualização'),
        ),
        body: ListView(
          children: [
            const Placeholder(
              fallbackHeight: 200,
            ),
            ListView.builder(
              itemCount: 10000,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                print('item :$index');
                return Container(
                    height: 150,
                    color: Colors.primaries[index % Colors.primaries.length],
                    child: FittedBox(
                      child: Text(index.toString()),
                    ));
              },
            ),
          ],
        ));
  }
}
