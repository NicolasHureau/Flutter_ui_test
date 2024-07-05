import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Fucking Profile!"),
          centerTitle: true,
          elevation: 3,
          shadowColor: Colors.purple,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Stack(alignment: AlignmentDirectional.topCenter, children: [
              Container(
                  width: width,
                  height: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://madeinperpignan.com/wp-content/uploads/2022/06/Hellfest-2022-39-2022-06-20-01-16-scaled.jpg'),
                          fit: BoxFit.cover))),
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.pink,
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: ClipOval(
                          child: Image.network(
                              'https://cdns-images.dzcdn.net/images/artist/38bf05cd6ac75c677a12a99121f29935/1900x1900-000000-80-0-0.jpg')),
                    )),
              ),
            ]),
            const Text(
              "Josh Homme",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.pink,
                      side: const BorderSide(
                        color: Colors.pink,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.only(left: 40, right: 40),
                    ),
                    child: const Text(
                      "Modifier le profil",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  color: Colors.white,
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.pink,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.only(left: 40, right: 40),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Divider(
                color: Colors.grey,
              ),
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.only(left: 15, bottom: 10),
                  child: const Text(
                    "A propos de moi ...",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 15, right: 5),
                      child: const Icon(Icons.home),
                    ),
                    const Text(
                      "L'enfer du cul",
                      style: TextStyle(color: Colors.black87, fontSize: 12),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 5),
                      child: Icon(Icons.work),
                    ),
                    Text(
                      "Beau-gosse",
                      style: TextStyle(color: Colors.black87, fontSize: 12),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 5),
                      child: Icon(Icons.heart_broken),
                    ),
                    Text(
                      "Free",
                      style: TextStyle(color: Colors.black87, fontSize: 12),
                    )
                  ],
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: const Divider(
                color: Colors.grey,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 15, bottom: 10),
              child: const Text(
                "Amis",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  padding: const EdgeInsets.all(5),
                  height: 150,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(5)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      "https://m.media-amazon.com/images/M/MV5BMTY5NzY4NzgxNV5BMl5BanBnXkFtZTcwMzcyOTQwOQ@@._V1_FMjpg_UX1000_.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  padding: const EdgeInsets.all(5),
                  height: 150,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(5)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      "https://m.media-amazon.com/images/I/71ffX+4DSAL._AC_UF1000,1000_QL80_.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  padding: const EdgeInsets.all(5),
                  height: 150,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(5)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      "https://m.media-amazon.com/images/I/81lrF8AR+tL._UF1000,1000_QL80_.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  padding: const EdgeInsets.all(5),
                  height: 150,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(5)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      "https://www.rocknfolk.com/wp-content/uploads/2020/07/Corey-Taylor-Ashley-Osborn-presse-scaled-1.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
