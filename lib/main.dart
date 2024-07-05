import 'package:flutter/material.dart';
import 'item.dart';
import 'fetch.dart';

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
          appBar: AppBar(title: const Text('API Consumer')),
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
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    // return ListTile(
                    //   leading: const Icon(Icons.label),
                    //   title: Text(snapshot.data![index].name),
                    //   subtitle: Text(snapshot.data![index].price),
                    // );
                    return Container(
                      width: 20,
                      height: 50,
                      child: Card(
                        child: Column(
                          children: [
                            Text(snapshot.data![index].name)
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            },
          ),
        ));
  }
}
