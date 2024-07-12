import 'package:flutter/material.dart';

import '../models/product_model.dart';

class OrderList extends StatefulWidget {
  final Product product;

  const OrderList({Key? key, required this.product}) : super(key: key);

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Product: ${widget.product.name}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement logic to add product to order
                    // Example: addToOrder(widget.product);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Product added to order')),
                    );
                  },
                  child: const Text('Add +'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Cancel order and go back
                  },
                  child: const Text('Cancel Order'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: coffeeProducts.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(
            coffeeProducts[index].image,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(coffeeProducts[index].name),
          subtitle: Text(coffeeProducts[index].description),
          trailing: Text(coffeeProducts[index].price),
          onTap: () {
            // Implement adding to cart functionality here
            // You can use a state management solution like Provider or setState
          },
        );
      },
    );
  }
}
