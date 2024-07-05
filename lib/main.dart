import 'package:flutter/material.dart';
import 'item.dart';
import 'fetch.dart';
import 'helpers/capitalizer.dart';

void main() {
  runApp(const TheApp());
}

class TheApp extends StatefulWidget {
  const TheApp({super.key});

  @override
  TheAppState createState() => TheAppState();
}

class TheAppState extends State<TheApp> {
  List<Item> itemList = [];
  bool isLoading = true;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Crafted By'),
            centerTitle: true,
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),

            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag_outlined)
              )
            ]
          ),
          body: FutureBuilder<List<Item>>(
            future: fetchFakeData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return const Center(child: Text('No items found'));
              } else {
                // Data loaded successfully, build the list view
                return GridView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    // return ListTile(
                    //   leading: const Icon(Icons.label),
                    //   title: Text(snapshot.data![index].name),
                    //   subtitle: Text(snapshot.data![index].price),
                    // );
                    return SizedBox(
                      child: Card(
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            children: [
                              Text(
                                snapshot.data![index].name.capitalize(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Image.network(
                                'https://picsum.photos/150/100?random=$index',
                                fit: BoxFit.cover,
                              ),
                              RichText(
                                  text: TextSpan(
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.black),
                                      children: <TextSpan>[
                                        const TextSpan(text: 'Crafted by : '),
                                        TextSpan(
                                            text: snapshot.data![index].author)
                                      ]
                                  )
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  padding: const EdgeInsetsDirectional.all(10),
                );
              }
            },
          ),
        )
    );
  }
}
