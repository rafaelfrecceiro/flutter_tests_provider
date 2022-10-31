import 'package:flutter/material.dart';
import 'package:flutter_test_provider/providers/product_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductProvider prod = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Consumer<ProductProvider>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: prod.products.length,
            itemBuilder: (context, index) {
              return Container(
                height: 60,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(prod.products[index].name),
                        const Spacer(),
                        Text('R\$ ${prod.products[index].value}'),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
