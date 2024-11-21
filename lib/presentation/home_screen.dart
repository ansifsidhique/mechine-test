import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/aplication/product_bloc.dart';
import 'package:machine_test/presentation/product_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<ProductBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.isError) {
            return const Center(child: Text("error while getting data"));
          } else if (state.productList.isEmpty) {
            return const Center(
              child: Text("list is empty"),
            );
          }
          return ListView(
            padding: const EdgeInsets.only(left: 8, right: 8),
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 20,
                width: MediaQuery.of(context).size.width,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.menu, color: Colors.black),
                        onPressed: () {
                          // print("Left button pressed");
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.shopping_cart),
                        onPressed: () {},
                      )
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Discover our exclusive\nproduct",
                style: TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                    fontWeight:
                        FontWeight.bold), // Customize the font size if needed
                textAlign: TextAlign.start,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "in this marketplace you will find your varius\ntechnics in the cheapest price",
                style: TextStyle(color: Colors.black54),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Headphone",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "show All",
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 270,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final items = state.productList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (builder) {
                          return ProductDetailsPage(
                            image: items.thumbnail,
                            title: items.title.toString(),
                            description: items.description.toString(),
                            price: items.price,
                            id: items.id,
                          );
                        }));
                      },
                      child: Card(
                        child: SizedBox(
                          width: 190,
                          height: 270,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.black,
                                      ))
                                ],
                              ),
                              ClipOval(
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  child: ClipOval(
                                    child: Image.network(
                                      items.thumbnail,
                                      // 'https://example.com/your-image-url.jpg',
                                      width: 200,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              // Container(
                              //   height: 100,
                              //   width: 100,
                              //   decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //       image: NetworkImage(" ${items.thumbnail} "
                              //           //   'https://via.placeholder.com/300x200',
                              //           ),
                              //       fit: BoxFit.cover,
                              //     ),
                              //     borderRadius: BorderRadius.circular(10),
                              //   ),
                              // ),
                              TextWidget(
                                text: items.brand.toString(),
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                              TextWidget(
                                  text: items.brand ?? "no da",
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal),
                              TextWidget(
                                  text: items.price.toString(),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 30,
                    );
                  },
                  itemCount: state.productList.length,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "mobile and accessories",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "show All",
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  )
                ],
              ),
              SizedBox(
                height: 270,
                width: MediaQuery.of(context).size.width,
                child: ListView.separated(

                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final items = state.productList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (b) {
                          return ProductDetailsPage(
                            image: items.thumbnail,
                            id: items.id,
                            title: items.title.toString(),
                            description: items.description.toString(),
                            price: items.price,
                          );
                        }));
                      },
                      child: Card(
                        child: SizedBox(
                          width: 190,
                          height: 270,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.black,
                                      ))
                                ],
                              ),
                              ClipOval(
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  child: ClipOval(
                                    child: Image.network(
                                      items.thumbnail,
                                      // 'https://example.com/your-image-url.jpg',
                                      width: 200,
                                      height: 200,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              TextWidget(
                                text: items.brand.toString(),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              TextWidget(
                                  text: items.thumbnail.toString(),
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal),
                              TextWidget(
                                  text: items.price.toString(),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 30,
                    );
                  },
                  itemCount: state.productList.length,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const TextWidget({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
