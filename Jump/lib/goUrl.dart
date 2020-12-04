import 'package:flutter/material.dart';

class Product {
  final String title; //商品标题
  final String des; // 商品描述
  Product(this.title, this.des);
}

void main() {
  runApp(MaterialApp(
    title: '导航数据传递和接受',
    home: ProductList(
      products: List.generate(
        20,
        (index) => Product('商品ID:$index', '商品详情的编号为$index'),
      ),
    ),
  ));
}

class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key, @required this.products}) : super(key: key);
  @override
  // BuildContext 可不写 context 必写
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('跳转页面 并携带参数'),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(products[index].title),
              subtitle: Text(products[index].des),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(
                      product: products[index],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  final product;
  ProductDetails({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${product.title}'),
      ),
      body: Center(
        child: Text('${product.des}'),
      ),
    );
  }
}
