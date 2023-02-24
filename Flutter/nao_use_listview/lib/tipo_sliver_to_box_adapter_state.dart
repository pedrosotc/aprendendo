import 'package:flutter/material.dart';
import 'tipo_sliver_to_box_adapter.dart';

class TipoSliverToBoxAdapterState extends State<TipoSliverToBoxAdapter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de visualização'),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Placeholder(
              fallbackHeight: 200,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                // ignore: avoid_print
                print('item :$index');
                return Container(
                  height: 150,
                  color: Colors.primaries[index % Colors.primaries.length],
                  child: FittedBox(
                    child: Text(index.toString()),
                  ),
                );
              },
              childCount: 10000,
            ),
          ),
        ],
      ),
    );
  }
}
